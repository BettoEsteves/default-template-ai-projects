Param(
    [string]$ProjectName,
    [switch]$Force
)

$ErrorActionPreference = 'Stop'

$workspaceRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
$templatePath = Join-Path $workspaceRoot '.env.mcp.example'
$targetPath = Join-Path $workspaceRoot '.env.mcp.local'

if (-not (Test-Path $templatePath)) {
    throw "Template file not found: $templatePath"
}

if ((Test-Path $targetPath) -and -not $Force) {
    throw "File already exists: $targetPath. Use -Force to overwrite."
}

if ([string]::IsNullOrWhiteSpace($ProjectName)) {
    $ProjectName = Read-Host 'Digite o PROJECT_NAME para este clone (ex: plataforma-dados-fiscal)'
}

if ([string]::IsNullOrWhiteSpace($ProjectName)) {
    throw 'PROJECT_NAME é obrigatório.'
}

if ($ProjectName -match '^replace-with-') {
    throw 'PROJECT_NAME inválido. Informe um nome real do projeto.'
}

$content = Get-Content -Path $templatePath -Raw
$content = $content -replace '(?m)^PROJECT_NAME=.*$', "PROJECT_NAME=$ProjectName"

Set-Content -Path $targetPath -Value $content -Encoding UTF8

$requiredKeys = @(
    'PROJECT_NAME',
    'JIRA_MCP_URL', 'JIRA_MCP_TOKEN', 'JIRA_WORKSPACE',
    'AZURE_MCP_URL', 'AZURE_MCP_TOKEN', 'AZURE_ORG', 'AZURE_PROJECT',
    'FIGMA_MCP_URL', 'FIGMA_MCP_TOKEN', 'FIGMA_TEAM',
    'NOTION_MCP_URL', 'NOTION_MCP_TOKEN', 'NOTION_WORKSPACE'
)

$dockerImageKeys = @(
    'JIRA_MCP_IMAGE', 'AZURE_MCP_IMAGE', 'FIGMA_MCP_IMAGE', 'NOTION_MCP_IMAGE'
)

$lines = Get-Content -Path $targetPath
$map = @{}
foreach ($line in $lines) {
    if ($line -match '^\s*#' -or $line -notmatch '=') { continue }
    $parts = $line.Split('=', 2)
    $k = $parts[0].Trim()
    $v = $parts[1].Trim()
    $map[$k] = $v
}

$placeholders = @()
foreach ($key in $requiredKeys) {
    if (-not $map.ContainsKey($key) -or [string]::IsNullOrWhiteSpace($map[$key])) {
        $placeholders += $key
        continue
    }
    if ($map[$key] -match '^replace-with-') {
        $placeholders += $key
    }
}

$dockerImagePlaceholders = @()
foreach ($key in $dockerImageKeys) {
    if (-not $map.ContainsKey($key) -or [string]::IsNullOrWhiteSpace($map[$key])) {
        $dockerImagePlaceholders += $key
        continue
    }
    if ($map[$key] -match 'replace-with-your-org|^replace-with-') {
        $dockerImagePlaceholders += $key
    }
}

Write-Host "Arquivo gerado: $targetPath" -ForegroundColor Green
Write-Host "PROJECT_NAME definido como: $ProjectName" -ForegroundColor Green

if ($placeholders.Count -gt 0) {
    Write-Host ''
    Write-Host 'Preencha estes campos antes de iniciar MCP:' -ForegroundColor Yellow
    $placeholders | ForEach-Object { Write-Host "- $_" -ForegroundColor Yellow }
    Write-Host ''
    Write-Host 'Após preencher, você pode subir os containers MCP com:' -ForegroundColor Cyan
    Write-Host 'docker compose --profile mcp --env-file .env.mcp.local -f infra/ci/docker-compose.mcp.yml up -d' -ForegroundColor Cyan
    exit 2
}

Write-Host ''
Write-Host 'Configuração inicial concluída. Você já pode iniciar MCP com Docker.' -ForegroundColor Green
if ($dockerImagePlaceholders.Count -gt 0) {
    Write-Host 'Atenção: `*_MCP_IMAGE` ainda contém placeholders. Defina imagens reais antes de usar Docker MCP.' -ForegroundColor Yellow
    $dockerImagePlaceholders | ForEach-Object { Write-Host "- $_" -ForegroundColor Yellow }
}
Write-Host 'docker compose --profile mcp --env-file .env.mcp.local -f infra/ci/docker-compose.mcp.yml up -d' -ForegroundColor Cyan
