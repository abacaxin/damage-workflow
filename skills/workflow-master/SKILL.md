---
name: workflow-master
description: Orquestra transversalmente o DAMAGE Workflow desde a inicialização de um projeto até sua manutenção. Lê o estado persistente, entende o contexto atual, identifica a próxima ação, encaminha para a skill especialista adequada, controla transições, aprovações, bloqueios e retornos, e inicia o projeto quando ainda não existe estado DAMAGE. Use como camada permanente de controle em qualquer interação relevante com um projeto.
---

# Workflow Master

## Purpose

Act as the permanent orchestration layer of the DAMAGE Workflow.

This skill understands where the project is, what is known, what is pending, what is blocked, and which specialist should act next.

There is no separate startup skill. Project initialization is one responsibility of workflow-master.

It answers:
- What is the current project state?
- What has already been established?
- What is missing or blocked?
- What action should happen next?
- Which specialist owns that action?
- Is human approval required?
- Did a new request change an established decision?
- Should the workflow return to an earlier area?

It does not replace specialist skills. It decides who should act, when, and why.

## Position in the Workflow

workflow-master is transversal and conceptually active throughout the complete project lifecycle.

It may be invoked when entering a project, before significant workflow actions, after specialist work, when new requests arrive, when implementation exposes earlier problems, when decisions change, before high-impact actions, and during maintenance.

The lifecycle is a controlled state machine, not a queue.

Typical progression:
INIT → DISCOVERY → DEFINITION → PREPARATION → IMPLEMENTATION → VALIDATION → RELEASE → MAINTENANCE

Valid returns include:
IMPLEMENTATION → TECHNICAL_PLANNING → IMPLEMENTATION
IMPLEMENTATION → CHANGE_MANAGEMENT → REQUIREMENTS_DEFINITION → IMPLEMENTATION
DESIGN → REQUIREMENTS_DEFINITION → DESIGN

A return is not a workflow failure. It is a controlled correction that must be recorded.

## Initialization

When the project has no DAMAGE state, establish the minimum control structure.

Expected baseline:

.damage/
├── config.yaml
└── workflow-lock.md

docs/
├── 00-project-state.md
└── 07-decisions.md

tasks/
├── backlog.md
├── active-task.md
└── completed.md

Do not overwrite existing documentation merely to create DAMAGE files.

Before initialization:
1. Inspect the project structure.
2. Check whether DAMAGE artifacts already exist.
3. Determine whether this is new, existing, or being adopted by DAMAGE.
4. Preserve existing information.
5. Create only missing control artifacts.
6. Record initialization in project state.
7. Route immediately to the appropriate specialist.

If the project is new or insufficiently understood, route to project-discovery.

If meaningful discovery already exists, read it and route to the next unresolved responsibility instead of repeating discovery.

## State Inspection

Inspect available state and evidence before routing.

At minimum, look for:
- .damage/config.yaml
- .damage/workflow-lock.md
- docs/00-project-state.md
- docs/01-project-discovery.md
- docs/02-requirements.md
- docs/03-scope.md
- docs/04-technical-spec.md
- docs/05-visual-spec.md
- docs/06-roadmap.md
- docs/07-decisions.md
- docs/08-code-index.md
- docs/09-security.md
- docs/10-change-log.md
- tasks/backlog.md
- tasks/active-task.md
- tasks/completed.md

Also inspect relevant project files when the current decision depends on them.

Do not infer completion from filenames alone.

## State Model

Project state should make these dimensions explicit:
- lifecycle phase
- current activity
- active specialist
- status
- blockers
- pending approvals
- open questions
- active decisions
- known changes
- next action
- last meaningful transition

Useful states:
NOT_INITIALIZED, DISCOVERY, DEFINITION, APPROVAL, PREPARATION, IMPLEMENTATION, VALIDATION, SECURITY_REVIEW, RELEASE, MAINTENANCE, BLOCKED.

A project may have a substate or active specialist without creating a new lifecycle phase.

## Routing Rules

Route according to responsibility:
- Unknown or incomplete product context → project-discovery
- Functional behavior, rules, actors, permissions, acceptance criteria → requirements-definition
- Formal project boundary or major scope dispute → scope-definition
- Commercial decision or client approval → commercial-approval
- Architecture, stack, data, integrations, technical constraints → technical-planning
- Product visual language → design-direction
- Information architecture, user flows, screens, components, interaction behavior → ux-ui-design
- Design acceptance → design-approval
- Consolidated implementation instructions → master-prompt
- Existing codebase mapping → codebase-indexer
- Executable implementation breakdown → implementation-planning
- Production code changes → implementation
- Testing and functional verification → validation
- Security assessment → security-review
- Release preparation → release-preparation
- Production publication → release-deploy
- Documentation → documentation
- Post-release evolution → maintenance
- Changes to established decisions or boundaries → change-management

These are routing defaults, not a rigid sequence.

## Adaptive Definition

Requirements, scope, design, and technical planning are interdependent.

Return to the responsible area when work exposes:
- unresolved requirements;
- implicit business rules;
- scope conflicts;
- missing permissions;
- new interaction requirements;
- technical constraints that change product behavior;
- design decisions requiring new functionality;
- integration or data dependencies not previously established.

Do not push an inconsistent project forward merely to preserve linear progress.

## Change Detection

Treat a request as a potential change when it modifies requirements, boundaries, roles, business rules, integrations, data handling, architecture, visual direction, deadlines, commercial commitments, production behavior, or security assumptions.

First classify it as:
1. clarification of an existing decision;
2. implementation of an approved decision;
3. a new decision;
4. a change to an existing decision.

If it changes an established decision, route through change-management when appropriate and record the impact before downstream work continues.

Never silently rewrite approved context.

## Approvals and Human Control

Stop and request human approval for materially consequential actions when approval is not established.

Examples:
- approved scope changes;
- commercial terms;
- recurring costs;
- production deployment;
- destructive operations;
- significant authentication or authorization changes;
- payment behavior;
- sensitive data handling;
- irreversible migrations;
- critical security decisions.

Technical ability is not authorization.

## Completion Handoff

After a specialist completes its responsibility:
1. Re-read its output.
2. Check completion criteria.
3. Identify newly exposed questions or conflicts.
4. Update project state.
5. Record significant decisions.
6. Determine the next specialist.
7. Stop if human approval is required.
8. Never claim the entire workflow is complete because one specialist finished.

## Project State Output

Maintain docs/00-project-state.md as the concise operational view.

Normally include:
1. Project identity
2. Current lifecycle phase
3. Current activity
4. Active specialist
5. Overall status
6. Confirmed artifacts
7. Pending work
8. Blockers
9. Pending approvals
10. Open questions
11. Recent transitions
12. Active decisions
13. Next action
14. Last updated

Keep it concise. Detailed knowledge belongs in specialist documents.

## Decisions

Important decisions belong in docs/07-decisions.md.

Record:
- decision;
- status;
- date/context when available;
- rationale;
- source;
- impact;
- affected artifacts;
- approval requirement.

Never create fake dates, approvals, rationales, or sources.

## Workflow Lock

.damage/workflow-lock.md should contain only rules or constraints that must remain stable during workflow execution.

It is not a task log and not a replacement for project state.

Examples:
- workflow configuration;
- approval requirements;
- protected constraints;
- rules preventing destructive or unauthorized actions.

Do not use the lock to hide unresolved decisions.

## Completion Criteria

An orchestration cycle is complete when:
- current state is understood from evidence;
- current responsibility is identified;
- blockers and approvals are known;
- the correct specialist is selected;
- required returns or changes are explicit;
- state and significant decisions are updated when necessary;
- the next action is clear.

It does not need to finish the project.

## Boundaries

workflow-master does not:
- perform specialist discovery instead of project-discovery;
- define detailed requirements instead of requirements-definition;
- invent or silently approve scope;
- design the complete UI instead of ux-ui-design;
- choose architecture instead of technical-planning;
- write production code instead of implementation;
- claim tests passed without evidence;
- deploy production without authorization;
- absorb all specialist responsibilities.

Its job is orchestration, state control, routing, and workflow integrity.
