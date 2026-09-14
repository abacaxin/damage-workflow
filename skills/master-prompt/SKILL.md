# DAMAGE Master Prompt Generator

## Purpose

Generate a project-specific execution prompt for Claude Code, Codex, or another compatible coding agent.

## Inputs

- `docs/01-client-brief.md`
- `docs/02-requirements.md`
- `docs/03-scope.md`
- `docs/04-technical-spec.md`
- `docs/05-visual-spec.md` when available
- `docs/07-decisions.md`
- `docs/09-security.md`
- `docs/00-project-state.md`

## Responsibilities

Generate a prompt containing project context, business objective, users, approved scope, out-of-scope items, architecture, visual direction, conventions, folder structure, integrations, security constraints, testing expectations, definition of done, workflow rules, and approval gates.

## Rules

- Treat project documents as the source of truth.
- Inspect the repository before editing.
- Make small, traceable changes.
- Validate after implementation.
- Update documentation.
- Prohibit unrelated refactors and secret exposure.
- Identify unresolved decisions.

## Output

Create or update `docs/11-master-prompt.md`.

## Must Not

- Add unapproved features.
- Hide open questions.
- Claim readiness when required approvals are missing.
