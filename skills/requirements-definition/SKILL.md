# DAMAGE Requirements Definition

## Purpose

Transform the client brief into organized, testable, and traceable requirements.

## Inputs

- `docs/01-client-brief.md`
- Existing project context.
- Confirmed client information.
- Existing assets and constraints.

## Responsibilities

Identify functional and non-functional requirements, user roles, journeys, content, integrations, accessibility, performance, security, SEO when relevant, acceptance criteria, open questions, assumptions, and risks.

## Requirement Format

Each requirement must include:

- ID
- Description
- Type
- Priority
- Source
- Acceptance criteria
- Status

Use priorities: Must, Should, Could, Won't.

## Rules

- Do not invent requirements.
- Distinguish explicit requirements from inferred needs.
- Label inferred needs as proposals or assumptions.
- Detect contradictions.
- Identify cost, schedule, security, and architecture impacts.
- Do not define implementation details prematurely.

## Output

Update `docs/02-requirements.md` and return open questions, risks, assumptions, approval needs, and the recommended next skill.

## Must Not

- Define final scope.
- Choose technologies.
- Begin implementation.
