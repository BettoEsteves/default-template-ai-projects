# Repository Rules

## Organization Rules
- Preserve the canonical folder layout defined in `/.ai/PROJECT_STRUCTURE.md`.
- Keep language domains separated: Python in `src/python/`, R in `src/r/`, Rust in `src/rust/`.
- Keep architecture and product intent documented under `docs/`.

## Git Rules
- Do not commit generated outputs, logs, or local test scripts.
- Use focused commits and include governance/documentation updates when structure changes.
- Keep secrets and credentials out of version control.

## CI/CD Rules
- CI must run on push and pull requests.
- CI must validate required structure and fail on forbidden tracked paths.
- CI should execute baseline Python checks and can be extended for R and Rust as projects mature.
- Security workflow should run dependency and code scanning checks.
- Dependency update automation should be enabled for supported ecosystems.

## Documentation Rules
- Every markdown file must explain purpose, scope, and ownership.
- Architecture decisions must be traceable via ADRs.
- Roadmap and board must reflect current execution reality.
- Community and security policy documents must remain present and current.

## Engineering Standards Rules
- Follow repository naming conventions for files, modules, variables, and tests.
- Follow `.editorconfig` indentation and whitespace rules.
- Keep comments focused on intent, risks, and non-obvious decisions.
- Keep prompt and AI assistant instructions aligned with `docs/TEMPLATE_USAGE.md`.
