# MCP Setup for Jira, Azure DevOps, Figma and Notion

## Purpose
Enable AI agents in IDEs to retrieve context and execute productivity workflows using Jira, Azure DevOps, Figma and Notion through MCP.

## Why Use This
- Reduces manual copy/paste of requirements, tickets, acceptance criteria, design decisions, and product notes.
- Improves traceability between code changes and work items.
- Improves alignment between implementation, design system (Figma), and documentation (Notion).
- Speeds planning, implementation, and review cycles.
- Keeps security posture by using environment variables instead of hardcoded tokens.

## Prerequisites
- MCP servers available for Jira, Azure DevOps, Figma and Notion (local stdio or remote HTTP/SSE).
- Access tokens with least privilege.
- Environment variables configured from `.env.mcp.example`.

## How each user should provide their own data
Use this pattern for every collaborator in the project:
1. Run `pwsh -File infra/ci/setup-project.ps1`.
2. Provide `PROJECT_NAME` (mandatory and unique per cloned project/repo).
3. Fill only your own values in `.env.mcp.local` (tokens, workspace/team, organization, project).
4. Never commit `.env.mcp.local`.

Minimum values each user must set:
- Project identity: `PROJECT_NAME`
- Jira: `JIRA_MCP_URL`, `JIRA_MCP_TOKEN`, `JIRA_WORKSPACE`
- Azure DevOps: `AZURE_MCP_URL`, `AZURE_MCP_TOKEN`, `AZURE_ORG`, `AZURE_PROJECT`
- Figma: `FIGMA_MCP_URL`, `FIGMA_MCP_TOKEN`, `FIGMA_TEAM`
- Notion: `NOTION_MCP_URL`, `NOTION_MCP_TOKEN`, `NOTION_WORKSPACE`

## Step-by-Step
1. Run `pwsh -File infra/ci/setup-project.ps1` to create `.env.mcp.local`.
2. Complete missing values listed by the script.
3. Open `.cursor/mcp.json` and adjust endpoints/headers for your MCP providers.
4. Restart IDE agent session so tools are reloaded.
5. Test with a simple query:
   - "List open Jira issues for current sprint"
   - "Show Azure DevOps work items linked to this repo"
   - "List Figma files/components referenced for this feature"
   - "Retrieve Notion page with acceptance criteria for this initiative"
6. Run planning flow using `task-planner` and include Jira/Azure IDs in scope.
7. Include Figma/Notion references in plan outputs before implementation starts.

## Optional: run MCP with Docker
If your MCP providers are containerized, start them with:

`docker compose --profile mcp --env-file .env.mcp.local -f infra/ci/docker-compose.mcp.yml up -d`

Stop with:

`docker compose --profile mcp --env-file .env.mcp.local -f infra/ci/docker-compose.mcp.yml down`

Notes:
- The compose file is a template. Define real `*_MCP_IMAGE` values in `.env.mcp.local`.
- Keep `.cursor/mcp.json` pointing to the endpoints you actually expose (remote or localhost).

## Security Guidance
- Never commit real secrets in `.env`, `mcp.json`, or docs.
- Scope tokens to minimal permissions.
- Rotate tokens periodically.
- Use private channels for security incidents (see `SECURITY.md`).

## Suggested MCP Actions by Phase
- Planning: fetch epics, stories, acceptance criteria.
- Discovery: fetch design tokens/components (Figma) and product requirements (Notion).
- Implementation: update work-item status and link PR/branch.
- Review: validate completion criteria and evidence.

## Troubleshooting
- If MCP tools do not appear, check JSON syntax and restart the IDE.
- If auth fails, validate token scope and environment variables.
- If responses are empty, verify project/board identifiers.
- If Figma/Notion results are incomplete, validate workspace/team IDs and page/document permissions.
