# CI Helper Notes

## Purpose
Provide reusable CI guidance and script conventions for this template.

## Baseline CI Responsibilities
- Validate required repository structure.
- Block forbidden tracked local-only paths.
- Run Python baseline tests and quality checks.
- Validate Terraform syntax and configuration state.

## Extension Guidance
- Add language-specific checks only when corresponding code is introduced.
- Keep CI deterministic and fail-fast.
- Reflect new CI jobs in project documentation and governance checklist.

## MCP via Docker (template)
- Compose file: `infra/ci/docker-compose.mcp.yml`
- Bootstrap script: `infra/ci/setup-project.ps1`
- Local secrets/config file: `.env.mcp.local` (gitignored)

Quick start:
1. Run `pwsh -File infra/ci/setup-project.ps1` to generate `.env.mcp.local` with `PROJECT_NAME`.
2. Fill remaining MCP values in `.env.mcp.local`.
3. Set real provider images in `*_MCP_IMAGE` variables (do not keep placeholder values).
4. Start MCP containers:
	- `docker compose --profile mcp --env-file .env.mcp.local -f infra/ci/docker-compose.mcp.yml up -d`
5. Stop MCP containers:
	- `docker compose --profile mcp --env-file .env.mcp.local -f infra/ci/docker-compose.mcp.yml down`
