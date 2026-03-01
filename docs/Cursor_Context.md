# Cursor Context Guide

## Purpose
Document how Cursor handles context for this template and how to configure project-level behavior.

## Key Context Inputs in Cursor
Based on Cursor docs, context in chats combines:
- system instructions and project rules
- user prompts and conversation history
- attached files and tool outputs
- workspace-retrieved context through search/tools

## Project-Level Files for Context and Rules
This template uses the following Cursor-relevant files:
- `.cursorrules` for persistent project rules.
- `.cursorignore` for indexing exclusions.
- `.cursor/mcp.json` for project-scoped MCP server configuration.
- `.cursor/plans/` for plan artifacts saved from Plan Mode.

## Recommended Workflow
1. Start complex work in Plan Mode.
2. Approve plan before build.
3. Keep prompts specific and outcome-oriented.
4. Validate with tests and CI checks.
5. Start fresh chats for different tasks and reference past chats when needed.

## Indexing and Privacy Notes
- Cursor semantic search indexes workspace files and keeps index synchronized.
- Ignore patterns can be controlled via ignore files (`.gitignore`, `.cursorignore`).
- Keep large generated artifacts and local outputs excluded for signal quality.

## MCP Usage Notes
- Keep API keys in environment variables, not hardcoded in `mcp.json`.
- Enable only trusted MCP servers and review tool permissions.
- Prefer project-level `.cursor/mcp.json` for reproducibility.

## Jira and Azure DevOps MCP
- This template expects Jira and Azure DevOps MCP endpoints configured via environment variables.
- Use `.env.mcp.example` as the canonical variable list.
- Follow `docs/MCP_Jira_Azure_Setup.md` for onboarding and validation steps.
