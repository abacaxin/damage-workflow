# Commercial Approval

## Purpose

The Commercial Approval skill is the mandatory decision gate between scope definition and technical planning.

Its purpose is to transform the defined project scope into a clear commercial agreement before implementation begins.

The skill ensures that the human decision-maker explicitly understands and approves:

- What will be delivered
- What will not be delivered
- Estimated effort
- Estimated timeline
- Commercial value
- Recurring costs
- Third-party costs
- Responsibilities
- Dependencies
- Change rules
- Approval status

The skill must never invent prices, deadlines, costs, contractual conditions, or approvals.

## Workflow Position

PROJECT_DISCOVERY
→ REQUIREMENTS
→ SCOPE
→ COMMERCIAL_APPROVAL
→ TECHNICAL_PLANNING
→ MASTER_PROMPT
→ EXECUTION

No critical implementation work should begin while required commercial decisions remain unresolved.

## Decision Integrity

Classify relevant information as:

- DEFINED — explicitly decided.
- PENDING — required but unresolved.
- RECOMMENDATION — proposed by the AI.
- ASSUMPTION — temporary inference.
- APPROVED — explicitly approved by the decision-maker.
- REJECTED — explicitly rejected.
- OUT_OF_SCOPE — explicitly excluded.

Never convert an assumption or recommendation into an approved decision.

## Commercial Analysis

Analyze:

### Deliverables
Identify exactly what the client receives, separating core, optional, and future functionality.

### Scope Boundaries
Explicitly identify included functionality, excluded functionality, and future functionality.

### Timeline
Record desired delivery date, estimated duration, milestones, dependencies, and client responsibilities. Never guarantee a deadline unless explicitly approved.

### Pricing
Record project price, payment structure, installments, deposit, milestone payments, optional services, and additional-work pricing.

If unknown:
PRICE: PENDING

Never invent a number.

### Recurring Costs
Identify hosting, domains, email, databases, SaaS, APIs, AI providers, storage, monitoring, and maintenance costs. Record who pays and whether each cost is included.

### Third-Party Dependencies
For each external service, record provider, purpose, account owner, cost, required credentials, and dependency risks.

### Responsibilities
Separate CLIENT RESPONSIBILITIES from DEVELOPMENT TEAM RESPONSIBILITIES.

### Change Policy
Approved scope is immutable unless a change is explicitly approved. Every change request must identify scope, timeline, cost, dependency, and approval impact.

## Approval Gate

Generate:

# Commercial Approval

## Project
[Project name]

## Deliverables
[Approved deliverables]

## Out of Scope
[Explicit exclusions]

## Timeline
[Approved or pending timeline]

## Investment
[Approved or pending price]

## Payment Conditions
[Approved or pending]

## Recurring Costs
[Costs and responsibility]

## Third-Party Dependencies
[Dependencies]

## Responsibilities
[Client / Team]

## Change Policy
[Approved policy]

## Pending Decisions
[List]

## Risks
[List]

## Approval Status
PENDING or APPROVED

The project can only receive APPROVED when all critical commercial decisions are explicitly defined and approved. Silence is never approval.

## Output

Generate:

docs/10-commercial-approval.md

Use:

STATUS: PENDING APPROVAL

until approval is explicit.

After approval:

STATUS: APPROVED

Keep the document synchronized with later commercial decisions.

## Interaction Rules

Ask only the questions necessary to resolve commercial uncertainty. Prefer concrete questions over abstract ones.

## Hard Rules

NEVER:
- Invent prices, deadlines, or contracts.
- Assume approval.
- Hide recurring costs.
- Include unapproved features.
- Silently absorb scope changes.
- Treat recommendations as decisions.
- Begin critical implementation with unresolved commercial blockers.

ALWAYS:
- Expose scope boundaries.
- Identify financial implications.
- Identify responsibilities.
- Track pending decisions.
- Record approval explicitly.
- Keep the commercial document synchronized.
