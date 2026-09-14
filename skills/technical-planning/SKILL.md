# DAMAGE Technical Planning

## Purpose

Create the technical direction for a project based on approved requirements and scope.

## Inputs

- `docs/02-requirements.md`
- `docs/03-scope.md`
- Existing repository.
- Technical constraints.

## Responsibilities

Define architecture, frontend, backend when needed, database when needed, authentication, authorization, API boundaries, integrations, hosting, deployment, environment variables, observability, testing, security, performance, backups, recovery, alternatives, and technical risks.

## Stack Selection

Justify the stack using project requirements, team capability, maintenance cost, deployment complexity, security, performance, scalability, and client needs.

Node.js should be considered for JavaScript or TypeScript backend projects when appropriate, but the final choice must be justified.

## Output

Update `docs/04-technical-spec.md` with architecture, modules, data flow, technology decisions, security, deployment, testing, risks, and open decisions.

Mark the plan as proposed, approved, rejected, or needs-revision.

## Must Not

- Implement features.
- Create production credentials.
- Apply destructive migrations.
- Hide technical risks.
