# Prompt Master

## Purpose

The Prompt Master skill converts all approved project knowledge into one authoritative execution specification.

It is a compilation artifact: it consolidates what has already been discovered, defined, approved, and technically planned into a precise prompt that another AI agent or developer can execute without relying on hidden conversation context.

It does not redefine the project, expand scope, or invent requirements.

## Workflow Position

PROJECT_DISCOVERY
→ REQUIREMENTS
→ SCOPE
→ COMMERCIAL_APPROVAL
→ TECHNICAL_PLANNING
→ MASTER_PROMPT
→ EXECUTION

## Source of Truth

Inspect all relevant project documentation before generating the Master Prompt:

- Project Discovery
- Requirements
- Scope
- Commercial Approval
- Technical Planning
- Architecture
- UX/UI specification
- Brand guidelines
- Database specification
- API specification
- Security requirements
- Integration documentation
- Existing repository
- Existing code
- Approved decisions

If sources conflict, identify the conflict and do not silently choose one when implementation would be affected.

## Repository Inspection

If a repository exists, inspect it before writing implementation instructions.

Understand:

- Framework and runtime
- Language and package manager
- Directory structure
- Existing components and routes
- APIs and database
- Authentication
- Environment variables
- Integrations
- Build and deployment configuration
- Tests and documentation

Do not assume the repository is empty or recreate existing infrastructure unnecessarily.

## Required Structure

# Master Prompt

## 1. Project Identity
Project name, product type, client, purpose, and current state.

## 2. Objective
What the project must accomplish.

## 3. Approved Scope
All approved functionality, separated into core, secondary, and optional functionality. Optional functionality is never mandatory.

## 4. Out of Scope
Explicit exclusions that must not be implemented.

## 5. Users
User types, roles, permissions, authentication requirements, and user journeys.

## 6. Functional Requirements
For each feature define purpose, inputs, outputs, behavior, rules, dependencies, edge cases, and acceptance criteria.

## 7. Business Rules
Translate approved business decisions into explicit, deterministic rules.

## 8. UX/UI
Visual identity, layout, navigation, components, interactions, responsive behavior, animation, states, and accessibility.

## 9. Technical Architecture
Framework, runtime, language, database, APIs, authentication, storage, integrations, deployment, and infrastructure.

## 10. Data Model
Entities, relationships, fields, validation, constraints, and relevant indexes.

## 11. API Contract
Endpoints, methods, authentication, request/response structures, validation, and errors where applicable.

## 12. Security
Authentication, authorization, secrets, environment variables, input validation, rate limiting, data protection, and sensitive-information handling.

Never expose secrets in code or documentation.

## 13. Integrations
Provider, purpose, credentials, API requirements, failure behavior, and fallback behavior.

## 14. Implementation Rules

The execution agent must:

- Inspect before modifying.
- Prefer existing infrastructure when appropriate.
- Make small, traceable changes.
- Preserve existing functionality.
- Avoid unnecessary dependencies.
- Follow existing project conventions.
- Keep changes scoped.
- Validate every meaningful change.

## 15. Validation

Define required validation, including relevant build, type checking, linting, tests, API behavior, authentication, responsive layouts, critical flows, database operations, and deployment checks.

## 16. Acceptance Criteria

Every major requirement must have a measurable acceptance condition.

## 17. Forbidden Changes

Explicitly list things the execution agent must not change, especially unapproved features, existing architecture, branding, commercial scope, deployment configuration, and third-party services.

## 18. Open Decisions

List unresolved items. Never silently implement pending decisions as permanent requirements.

## 19. Source Documents

List every document used to generate the Master Prompt.

## 20. Execution Strategy

Define the recommended implementation sequence according to project dependencies.

## Requirement Traceability

Use identifiers such as REQ-001, REQ-002, and REQ-003 where appropriate.

Each important requirement should identify its source and status.

Only APPROVED decisions become mandatory implementation requirements.

ASSUMPTIONS must remain visibly marked.

RECOMMENDATIONS must not become mandatory.

PENDING decisions must remain unresolved.

## Conflict Detection

Before generating the final Master Prompt, compare source documents for:

- Scope conflicts
- Technical conflicts
- UX conflicts
- Commercial conflicts
- Timeline conflicts
- Contradictory business rules

If a conflict affects implementation, stop final generation until it is resolved.

## Prompt Construction

The final prompt must be explicit, deterministic, traceable, implementation-oriented, and context-complete.

Avoid vague instructions such as "make it modern." Reference the approved project specifications instead.

## Execution Behavior

The execution agent receiving the Master Prompt must:

1. Read the entire prompt.
2. Inspect the repository.
3. Identify constraints.
4. Identify open decisions.
5. Confirm that no critical blocker exists.
6. Plan implementation.
7. Execute incrementally.
8. Validate each stage.
9. Update documentation when decisions change.
10. Report exactly what changed.

## Change Management

If implementation reveals that an approved requirement must change, stop and record:

- Original requirement
- Discovered issue
- Proposed change
- Technical impact
- Commercial impact
- Timeline impact
- Approval status

Do not silently redefine approved requirements.

## Completion Criteria

The project is complete only when:

- Approved requirements are implemented.
- Out-of-scope functionality remains untouched.
- Validation is completed.
- Critical flows are tested.
- Documentation is synchronized.
- Known issues are documented.
- No critical blocker remains.
- Commercial approval remains valid.

Never claim completion without satisfying documented acceptance criteria.

## Output

Generate:

docs/11-master-prompt.md

The document must be usable by another AI agent or developer without access to the original conversation.

## Hard Rules

NEVER:
- Invent requirements or business rules.
- Invent commercial decisions.
- Expand scope.
- Ignore conflicting documentation.
- Hide assumptions.
- Implement pending decisions as facts.
- Delete existing functionality without approval.
- Perform destructive operations without explicit authorization.
- Declare completion without validation.

ALWAYS:
- Use project documentation as the source of truth.
- Inspect the repository.
- Preserve approved decisions.
- Maintain traceability.
- Detect conflicts.
- Keep implementation scoped.
- Validate changes.
- Update documentation when decisions change.
