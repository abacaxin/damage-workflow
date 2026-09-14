# DAMAGE Project Initialization

## Purpose

Initialize a new DAMAGE project with a consistent structure, documentation system, and workflow configuration.

## Responsibilities

- Identify project type and business objective.
- Collect only the minimum information required to begin.
- Create the DAMAGE project structure.
- Create initial documentation files.
- Register confirmed decisions, assumptions, open questions, and risks.
- Initialize project state.

## Adaptive Discovery

Start with:

1. Client or business name.
2. Project name.
3. Project type.
4. Main business objective.
5. Intended users.
6. Main deliverables.
7. Known deadline or constraints.
8. Existing assets, references, or systems.
9. Whether authentication, payments, database, admin panel, or integrations are needed.

Ask additional questions based on the project type.

## Required Structure

Create:

```text
.damage/
docs/
tasks/
```

Create:

```text
.damage/config.yaml
.damage/workflow-lock.md
docs/00-project-state.md
docs/01-client-brief.md
docs/02-requirements.md
docs/03-scope.md
docs/04-technical-spec.md
docs/05-visual-spec.md
docs/06-roadmap.md
docs/07-decisions.md
docs/08-code-index.md
docs/09-security.md
docs/10-change-log.md
tasks/backlog.md
tasks/active-task.md
tasks/completed.md
```

Never overwrite existing files without explicit permission.

## Initial Configuration

```yaml
system: DAMAGE Workflow System
version: 0.1.0
scope: dmg
workflow_mode: hybrid
project_status: initializing
current_phase: INIT
requires_human_approval: true
```

## Classification

Classify each item as:

- Confirmed decision
- Client requirement
- Team proposal
- Assumption
- Open question
- Risk
- Constraint
- Out of scope

## Must Not

- Start implementation.
- Choose a final stack without technical planning.
- Define final pricing.
- Promise deadlines.
- Invent visual references.
- Mark the project approved.
- Overwrite existing files without permission.
