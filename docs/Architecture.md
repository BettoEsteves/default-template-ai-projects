# Architecture Overview

## Purpose
Describe the target architectural direction for projects bootstrapped from this template.

## Architectural Domains
- **Application code:** organized by language (`src/python`, `src/r`, `src/rust`).
- **Quality controls:** tests under `tests/unit` and `tests/integration`.
- **Operational artifacts:** local-only outputs in `results` and `logs`.
- **Platform & delivery:** CI workflows under `.github/workflows` and IaC under `infra/terraform`.

## AI/ML and LLM Scope
- Supports data engineering, analytics, machine learning, and AI assistants.
- Supports local model execution and cloud model providers.
- Requires reproducible workflows and documented decisions for model behavior.

## Governance Boundary
The `.ai` folder defines operating contracts, structure authority, and agent behavior that all implementation layers must obey.
