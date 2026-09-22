# DAMAGE Workflow System

A modular workflow system for Claude Desktop, Claude Code and coding agents, created by DAMAGE.

The repository is being rebuilt incrementally as a modular workflow system. The permanent `workflow-master`, `project-discovery`, `requirements-definition`, `design-direction` and `ux-ui-design` skills are now part of the active foundation.

## Purpose

DAMAGE Workflow System is intended to provide a structured, auditable development process for software and digital projects.

The long-term vision is to help an agent move through discovery, definition, planning, design, implementation, validation, security and release without skipping important decisions or inventing project information.

The final workflow is not being treated as a simple linear checklist. Its architecture uses a permanent orchestration layer, explicit project state, controlled transitions and adaptive definition loops.

## Core architecture decisions

Two structural decisions are foundational to the rebuild and are documented in `docs/architecture-decisions.md`.

### 1. `workflow-master` is permanently active

`workflow-master` is not a one-time phase. It is the transversal orchestration layer responsible for reading project state, identifying what should happen next, checking blockers and approvals, detecting scope changes and routing the agent to the appropriate specialized skill.

The other skills are specialists. `workflow-master` decides **who should act, when and why**.

The workflow is therefore modeled as a controlled state machine. Returning to an earlier stage is valid when new information, an architectural issue or a scope change requires it.

### 2. Project definition is an adaptive block, not a rigid pipeline

After `project-discovery`, the main definition responsibilities are separated into specialized skills:

- `requirements-definition` — what the product needs to do
- `scope-definition` — how far the project goes
- `design-direction` — how the product should present and behave visually
- `technical-planning` — how the product should be built

These areas are interdependent. They may send questions back to one another when requirements, scope, design or technical decisions conflict or expose new information.

The goal is consistency and completeness of decisions, not artificial linear progress.

## Current foundation

### `workflow-master`

The permanent orchestration layer controls the workflow from project initialization through maintenance. Project initialization is part of `workflow-master`; there is no separate startup skill.

It reads project state, routes work to specialist skills, controls transitions and approvals, detects changes, and maintains workflow integrity.

### `project-discovery`

The discovery skill conducts an adaptive discovery interview before detailed definition and implementation.

It investigates, according to the needs and risk of the project:

- Context, client and responsibilities
- Problem, motivation and objectives
- Project type and nature
- Users and audiences
- Conceptual scope and boundaries
- Business rules and operation
- Content and communication
- Brand and visual direction
- User experience and behavior
- Data, integrations and dependencies
- Security, privacy and compliance
- Resources, constraints, budget and schedule
- Success criteria and approval conditions

Its expected output is:

```text
docs/01-project-discovery.md
```

The skill does not implement the project, define the final technology stack or turn assumptions into confirmed decisions.

## Current and planned direction

The system is composed of specialized skills coordinated by the permanent workflow layer. The active foundation is being expanded incrementally.

Current skills include:

- `workflow-master`
- `project-discovery`
- `requirements-definition`
- `design-direction`
- `ux-ui-design`

Future areas include:

- Project initialization and state management
- Requirements definition
- Scope definition and approval gates
- Technical planning
- Visual and interaction planning
- Implementation support
- Codebase indexing
- Validation and testing
- Security review
- Release and maintenance

These areas will be rebuilt individually, with clear responsibilities and documented boundaries.

## Installation

### Claude Desktop

Download or create a ZIP package containing the skill folder and its `SKILL.md` file. In Claude Desktop, open the Skills/Habilidades management area and use the available upload option.

The expected package structure for the current skill is:

```text
project-discovery.zip
└── project-discovery/
    └── SKILL.md
```

The exact menu names may vary by Claude Desktop version.

### Claude Code

Clone the repository and run the installer:

```bash
git clone https://github.com/abacaxin/damage-workflow.git
cd damage-workflow
chmod +x install.sh
./install.sh
```

The installer copies available skills to the configured skills directory used by the target coding agent.

Restart Claude Code if it was already running.

## Usage

Inside a project, invoke the workflow master first:

```text
Start the DAMAGE Workflow for this project and determine the current state and next action.
```

For a new or insufficiently understood project, `workflow-master` initializes the DAMAGE state and routes to `project-discovery`.

You can also explicitly invoke a specialist when appropriate, for example:

```text
Execute ux-ui-design for the current project.
```

Specialist execution remains subject to the project's state, dependencies and approvals.

## Repository structure

```text
damage-workflow/
├── README.md
├── LICENSE
├── install.sh
├── uninstall.sh
├── docs/
│   └── architecture-decisions.md
└── skills/
    └── project-discovery/
        └── SKILL.md
```

## Development principles

- Build the system incrementally instead of pretending the complete workflow already exists.
- Keep each skill focused on one responsibility.
- Keep `workflow-master` as the permanent orchestration layer.
- Model workflow progression as controlled state transitions, not only a linear checklist.
- Allow controlled loops between definition areas when new information requires revision.
- Never invent requirements, decisions or project facts.
- Separate confirmed information from assumptions, references and recommendations.
- Do not silently change approved scope.
- Keep important project context persistent and auditable.
- Require human approval for high-impact or irreversible actions.
- Do not claim validation without evidence.
- Keep implementation downstream of discovery and explicit decisions.

## Status

Current stage: **foundation rebuild**

Current foundation includes `workflow-master`, `project-discovery`, `requirements-definition`, `design-direction` and `ux-ui-design`.

The version number and release process will be defined after the new architecture and initial skill set have stabilized.

## License

MIT License. See `LICENSE`.
