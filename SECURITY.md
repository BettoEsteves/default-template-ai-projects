# Security Policy

## Purpose
Define baseline security practices for repositories created from this template.

## Supported Scope
This template supports secure delivery practices for:
- Python, R/Posit, Rust codebases
- GitHub Actions CI/CD
- Terraform IaC
- AI/ML/LLM workloads

## Reporting a Vulnerability
Do not open public issues for sensitive vulnerabilities.

Recommended process:
1. Report privately to the project security contact/team.
2. Include reproduction steps, impact, and affected paths.
3. Wait for triage, remediation plan, and coordinated disclosure.

## Baseline Security Controls
- Secret scanning and dependency review in CI.
- Least-privilege tokens and permissions in workflows.
- Infrastructure validation for Terraform changes.
- Review of AI prompts and inference flows for abuse and leakage risks.

## Data Protection and Privacy
- Apply data minimization and purpose limitation.
- Classify sensitive data before ingestion.
- Define retention and deletion rules.
- Align with applicable laws (e.g., LGPD/GDPR and local regulations).

## Secure Development Expectations
- Validate inputs and external integrations.
- Avoid hard-coded credentials.
- Keep dependencies updated.
- Add tests for security-sensitive behavior when relevant.
