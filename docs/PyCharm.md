# PyCharm Standards

## Purpose
Align PyCharm behavior with repository governance and CI quality gates.

## Recommended Setup
- Use project interpreter compatible with `pyproject.toml`.
- Install dependencies from `requirements.txt`.
- Enable pytest as default test runner.

## Code Style and Formatting
- Respect `.editorconfig` for indentation, final newline, and line endings.
- Do not apply IDE-only formatting that conflicts with repository standards.

## Run/Debug Conventions
- Unit/integration tests run with marker selection (`not e2e` by default).
- Selenium E2E runs only when explicitly enabled for browser-enabled environments.

## AI Assistant Usage in IDE
- Keep governance files open while prompting.
- Reference target folders in prompts (for example `src/python/`, `tests/unit/`).
- Require docs + test updates in the same request when behavior changes.
