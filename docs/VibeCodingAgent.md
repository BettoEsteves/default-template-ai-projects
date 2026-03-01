# Vibe Coding Agent Standard

## Purpose
Define a repeatable operating standard for AI-assisted "Vibe Coding" with governance, quality, and delivery controls.

## Scope
Applies to all AI-assisted tasks in repositories created from this template, across Python, R/Posit, Rust, CI/CD, IaC, and documentation.

## Operating Principles
- Governance-first: structure and policy rules are mandatory.
- Small validated increments: each step must be testable and reviewable.
- Traceability: assumptions, decisions, and risks are documented.
- Security and privacy by default: no secrets and no unsafe data handling.

## Process Stages

### Stage 0 — Intake and Alignment
Objective: align user intent, constraints, and success criteria before any code changes.

Deliverables:
- Task statement in `.ai/task_state.md`
- Scope boundary (in/out)
- Validation strategy and acceptance criteria

### Stage 1 — Discovery and Context
Objective: gather repository context and identify impacted standards.

Deliverables:
- List of impacted files and systems
- Risk notes (security, privacy, compliance, operational)
- Decision on whether ADR is required

### Stage 2 — Design and Plan
Objective: define minimal implementation slices and quality gates.

Deliverables:
- Ordered implementation steps
- Tests to add/update (unit, integration, e2e when relevant)
- CI impacts and rollback approach

### Stage 3 — Implementation
Objective: execute approved changes in canonical folders only.

Deliverables:
- Code and docs changes
- Updated checklist/governance if structure rules changed
- No local-only artifacts tracked

### Stage 4 — Validation
Objective: verify behavior, quality, and policy compliance.

Deliverables:
- Test evidence (pytest and relevant checks)
- Terraform checks (if IaC touched)
- CI consistency confirmation

### Stage 5 — Handoff
Objective: provide clear closure and next-step readiness.

Deliverables:
- Summary of changes and residual risks
- Next-step recommendation
- Updated `.ai/task_state.md`

## Mandatory User Questions (Before Build)
The agent should collect explicit answers for these items at task start:

1. What problem are we solving and what is the expected outcome?
2. What is out of scope for this task?
3. Which language lane is primary (Python, R, Rust, IaC, Docs)?
4. What are the acceptance criteria (functional + non-functional)?
5. Are there security/privacy constraints (LGPD/GDPR, sensitive data, retention)?
6. What test level is required (unit, integration, e2e, inference/eval)?
7. What environments are impacted (local, CI, staging, prod)?
8. Do we need backward compatibility?
9. What is the rollback strategy if validation fails?
10. Who approves completion and what evidence is required?

## Task Prompt Templates

### A) Feature Prompt
"Implement [feature] in [target folders]. Respect `.ai/PROJECT_STRUCTURE.md` and `.ai/rules.md`. Add tests for [levels], update docs, and keep CI checks passing."

### B) Bugfix Prompt
"Fix [issue] in [files]. Preserve current architecture, add regression test, and document root cause and risk in handoff."

### C) Refactor Prompt
"Refactor [module] for [goal] without behavior change. Maintain naming/style rules, keep tests green, and document decisions."

### D) AI/Inference Prompt
"Adjust inference behavior for [use case]. Add scenario coverage (normal, edge, failure), document prompt/model assumptions, and validate safety constraints."

## Definition of Done (Vibe Coding)
- Scope and acceptance criteria met.
- Required tests executed and passing.
- CI remains consistent with repository structure.
- Security/privacy constraints respected.
- Documentation and governance updated where applicable.

## Anti-Patterns
- Starting implementation before aligning scope and acceptance criteria.
- Changing structure without checklist/CI/governance updates.
- Delivering code without test evidence.
- Ignoring privacy/security constraints in AI/data workflows.
