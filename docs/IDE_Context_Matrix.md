# IDE Context Matrix

## Purpose
Show how this template maps context/rules conventions across Cursor, VS Code, Zed, Trae, and Replit.

## File-Based Context Compatibility
- **Cursor**: `.cursorrules`, `.cursorignore`, `.cursor/mcp.json`, `.cursor/plans/`.
- **VS Code (Copilot)**: `.github/copilot-instructions.md`, `AGENTS.md`, optional `CLAUDE.md`, optional `*.instructions.md`.
- **Zed**: `.rules` (and compatibility names like `.cursorrules`, `.github/copilot-instructions.md`, `AGENTS.md`, `CLAUDE.md`).

## UI/Workflow-Driven Context (No strict repo file)
- **Trae**: Context CUE and SOLO/Agent modes are primarily workflow and IDE settings driven.
- **Replit Agent**: Build/Plan/Edit modes, App Testing, and checkpoint flow are tool-driven and prompt-structure dependent.

## Template Guidance by IDE
### Cursor
- Use Plan Mode for medium/large tasks.
- Keep `.cursorignore` aligned with local-only artifacts.
- Configure MCP via `.cursor/mcp.json` with env interpolation.

### VS Code
- Keep `.github/copilot-instructions.md` concise and always-on.
- Use `AGENTS.md` for multi-agent portability.
- Add `*.instructions.md` later if per-folder/per-language specialization is needed.

### Zed
- Keep `.rules` short and high-signal.
- Apply tool permission policies in local Zed settings.
- Reuse compatibility files (`.cursorrules`, `AGENTS.md`) to avoid duplicated rule sets.

### Trae
- Keep process standards explicit in repo docs (`docs/VibeCodingAgent.md`, `docs/TEMPLATE_USAGE.md`).
- Use task-stage prompts and acceptance criteria to improve Context CUE quality.

### Replit
- Prefer Plan mode before Build for governance-heavy tasks.
- Keep requests scoped and incremental to reduce cost and drift.
- Use repository policies to constrain generated output.

## What Was Missing and Now Covered
- Cross-IDE always-on instruction files.
- Cursor project context files (`.cursorignore`, `.cursor/mcp.json`, plans folder).
- Dedicated Cursor context documentation for team onboarding.
- Jira and Azure DevOps MCP onboarding (`docs/MCP_Jira_Azure_Setup.md`) for productivity workflows.

## Caution
Trae and Replit context behavior evolves quickly and is often configured in product UI. Keep this matrix updated as official docs change.
