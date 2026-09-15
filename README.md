# DAMAGE Workflow System

A structured workflow system for Claude Desktop, Claude Code and coding agents, created for DAMAGE.

The goal is simple: stop every project from starting with "build this" and instead give the agent a persistent, auditable development process from discovery to maintenance.

## What it does

DAMAGE Workflow System organizes projects into explicit phases:

`INIT → DISCOVERY → REQUIREMENTS → SCOPE → COMMERCIAL_APPROVAL → TECHNICAL_PLANNING → DESIGN → DESIGN_APPROVAL → IMPLEMENTATION → VALIDATION → SECURITY_REVIEW → RELEASE → MAINTENANCE`

It uses specialized skills instead of one giant prompt. Project context is persisted inside the repository under `.damage/`, `docs/`, and `tasks/`.

The default mode is **hybrid**: low-risk work can be automated, while important decisions and high-risk operations require human approval.

## Installation

### Recommended

```bash
git clone https://github.com/abacaxin/damage-workflow.git
cd damage-workflow
chmod +x install.sh
./install.sh
```

The installer copies the skills to:

```text
~/.claude/skills/
```

Restart Claude Code after installation if it was already running. For Claude Desktop, use the available Skills/Habilidades installation flow and select the repository or skill package according to the version of Claude Desktop you are using.

### One-line installation

```bash
curl -fsSL https://raw.githubusercontent.com/abacaxin/damage-workflow/main/install.sh | bash
```

## Usage

Inside a project, start with the discovery skill:

```text
Execute project-discovery and begin the DAMAGE project discovery interview.
```

Or:

```text
Understand this project completely before defining requirements or implementing anything.
```

The discovery skill conducts an adaptive conversation about the client, problem, objectives, project type, users, scope, business rules, content, brand, visual direction, experience, data, integrations, security, constraints, resources and success criteria. When the discovery is confirmed, it produces:

```text
docs/01-project-discovery.md
```

The system will create other project-local state as later skills are executed:

```text
project-root/
├── .damage/
│   ├── config.yaml
│   └── workflow-lock.md
├── docs/
│   ├── 00-project-state.md
│   ├── 01-project-discovery.md
│   ├── 02-requirements.md
│   ├── 03-scope.md
│   ├── 04-technical-spec.md
│   ├── 05-visual-spec.md
│   ├── 06-roadmap.md
│   ├── 07-decisions.md
│   ├── 08-code-index.md
│   ├── 09-security.md
│   └── 10-change-log.md
└── tasks/
    ├── backlog.md
    ├── active-task.md
    └── completed.md
```

## Included skills

| Skill | Purpose |
|---|---|
| `workflow-master` | Coordinates the workflow and chooses the next valid action |
| `init-project` | Initializes a new project structure |
| `project-discovery` | Conducts the complete adaptive project discovery interview |
| `project-state` | Maintains the official project state |
| `requirements-definition` | Converts the discovery into explicit requirements |
| `scope-definition` | Defines what is in and out of scope |
| `technical-planning` | Defines architecture, stack, infrastructure, security and testing |
| `master-prompt` | Produces the implementation master prompt |
| `codebase-indexer` | Creates a structured index of an existing codebase |

## Updating

If installed from a clone:

```bash
git pull
./install.sh
```

If installed through the one-line installer, run it again after the repository has been updated.

## Uninstall

From the repository:

```bash
./uninstall.sh
```

## Design principles

- Never invent requirements.
- Never silently change approved scope.
- Separate confirmed decisions from assumptions and proposals.
- Persist important project context in files, not only chat history.
- Require human approval for commercial decisions, sensitive access, destructive operations and production releases.
- Do not claim validation without evidence.
- Keep implementation downstream of discovery, requirements and planning.

## Status

Current version: `0.1.0`

This is an early public foundation. The workflow and individual skills can evolve independently through versioned releases.

## License

MIT License. See `LICENSE`.
