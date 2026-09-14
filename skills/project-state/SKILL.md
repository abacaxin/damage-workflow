# DAMAGE Project State

## Purpose

Maintain the official current state of a DAMAGE project.

## Source File

`docs/00-project-state.md`

## Required Format

```md
# Project State

## Project

- Name:
- Client:
- Type:
- Repository:
- Workflow version: 0.1.0

## Current Status

- Status: initializing
- Current phase: INIT
- Current task:
- Owner:
- Last updated:

## Progress

### Completed

### In Progress

### Next Actions

## Blockers

- None

## Open Questions

## Active Decisions

## Required Approvals

- None

## Validation

- Requirements validated: no
- Scope validated: no
- Technical plan validated: no
- Design validated: no
- Security reviewed: no
- Release validated: no

## Recommended Next Skill

- init-project
```

## Allowed Status Values

- initializing
- active
- blocked
- awaiting-approval
- paused
- completed
- archived

## Allowed Phase Values

- INIT
- DISCOVERY
- REQUIREMENTS
- SCOPE
- COMMERCIAL_APPROVAL
- TECHNICAL_PLANNING
- DESIGN
- DESIGN_APPROVAL
- IMPLEMENTATION
- VALIDATION
- SECURITY_REVIEW
- RELEASE
- MAINTENANCE

## Rules

- Update state when phases, tasks, blockers, decisions, requirements, scope, validation, or releases change.
- Preserve relevant history in `docs/10-change-log.md`.
- Never mark approval as granted without explicit approval.
- Keep the current task and next action concrete.
- Do not claim validation based only on generated code.
