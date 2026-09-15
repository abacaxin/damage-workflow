# DAMAGE Workflow System

A modular workflow system for Claude Desktop, Claude Code and coding agents, created by DAMAGE.

> **Project status: rebuilding from zero.**
>
> The repository is being reorganized from the ground up. At this stage, only the `project-discovery` skill is considered part of the new foundation. The remaining workflow, orchestration and implementation skills will be redesigned and added incrementally.

## Purpose

DAMAGE Workflow System is intended to provide a structured, auditable development process for software and digital projects.

The long-term vision is to help an agent move through discovery, requirements, scope, planning, design, implementation, validation, security and release without skipping important decisions or inventing project information.

The final workflow is not being treated as complete yet. Its phases, skill boundaries and automation rules will be defined and validated during this rebuild.

## Current foundation

### `project-discovery`

The first active skill conducts an adaptive discovery interview before requirements, scope, design or implementation begin.

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

## Planned direction

The system will eventually be composed of several specialized skills coordinated by a central workflow layer. This structure is planned, not yet implemented.

Possible future areas include:

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

The installer copies available skills to:

```text
~/.claude/skills/
```

Restart Claude Code if it was already running.

## Usage

Inside a project, start with:

```text
Execute project-discovery and begin the DAMAGE project discovery interview.
```

You can also use:

```text
Understand this project completely before defining requirements or implementing anything.
```

The discovery process should be completed and confirmed before later workflow stages are designed or executed.

## Repository structure

```text
damage-workflow/
├── README.md
├── LICENSE
├── install.sh
├── uninstall.sh
└── skills/
    └── project-discovery/
        └── SKILL.md
```

## Development principles

- Build the system incrementally instead of pretending the complete workflow already exists.
- Keep each skill focused on one responsibility.
- Never invent requirements, decisions or project facts.
- Separate confirmed information from assumptions, references and recommendations.
- Do not silently change approved scope.
- Keep important project context persistent and auditable.
- Require human approval for high-impact or irreversible actions.
- Do not claim validation without evidence.
- Keep implementation downstream of discovery and explicit decisions.

## Status

Current stage: **foundation rebuild**

Current active skill: `project-discovery`

The version number and release process will be defined after the new architecture and initial skill set have stabilized.

## License

MIT License. See `LICENSE`.
