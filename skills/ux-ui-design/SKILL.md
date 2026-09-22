---
name: ux-ui-design
description: Transforma requisitos, direção visual e contexto do produto em uma especificação detalhada de UX/UI. Define arquitetura da informação, jornadas, fluxos, estrutura de telas, estados, componentes, comportamentos, responsividade, acessibilidade e critérios de interface sem implementar código. Use após requisitos e direção visual quando o produto precisar de interfaces e interações especificadas para aprovação ou implementação.
---

# UX/UI Design

## Purpose

Transform confirmed requirements and visual direction into a coherent, implementable UX/UI specification.

This skill answers:
- How is information organized?
- How does the user move through the product?
- What screens or views are required?
- What does each screen contain?
- How do interactions behave?
- What states and edge cases exist?
- Which components and patterns are reusable?
- How does the interface adapt across devices?
- How are accessibility and feedback handled?

It connects product definition to implementation without becoming implementation.

## Position in the Workflow

UX/UI design belongs to the adaptive definition/design block.

Normally consume:
- docs/01-project-discovery.md
- docs/02-requirements.md
- docs/05-visual-spec.md
- docs/07-decisions.md
- .damage/config.yaml
- existing UI/design documentation when applicable

Normally produce a dedicated UX/UI specification. Prefer docs/06-ux-ui-spec.md unless the project already has an established equivalent artifact. Do not create duplicate specifications without reason.

May return to:
- project-discovery when context is incomplete;
- requirements-definition when a flow exposes missing behavior;
- scope-definition when interface needs materially alter boundaries;
- design-direction when visual rules are insufficient or contradictory;
- technical-planning when interaction depends on technical constraints;
- change-management when an established decision changes.

## Core Principles

### 1. Design from behavior, not decoration

Every significant interface element should have a purpose derived from a requirement, user need, business rule, established decision, or necessary interaction pattern.

Do not add features because they look useful.

### 2. Separate product behavior from presentation

A UI decision can describe how an existing capability is presented.

If it introduces new capability, data, permission, business logic, or workflow, flag it as a product decision and route it appropriately.

### 3. Model states explicitly

A screen is not only its default state.

Consider relevant states such as:
- loading;
- empty;
- populated;
- partial;
- error;
- unavailable;
- disabled;
- permission denied;
- validation failure;
- success;
- offline or degraded behavior when applicable.

Only define states relevant to the product.

### 4. Design systems before isolated screens

Use reusable layout, navigation, component, interaction, feedback, form, and content patterns.

A screen should consume the system rather than invent its own language.

### 5. Preserve traceability

Important interface decisions should be traceable to requirements, business rules, visual direction, or explicit proposals.

When a requirement cannot be represented coherently, identify the conflict instead of hiding it.

## Adaptive Process

### Step 1 — Establish users and contexts

For each relevant actor, establish:
- goal;
- context;
- permissions;
- primary tasks;
- relevant constraints;
- device/input context when known.

Do not redesign roles or permissions inside this skill.

### Step 2 — Build information architecture

Define:
- primary navigation;
- secondary navigation;
- hierarchy;
- content grouping;
- search/filter/sort structures;
- entry points;
- exit points;
- contextual actions;
- relationships between screens.

Keep the architecture proportional to the project.

### Step 3 — Map journeys and flows

For important journeys, describe:
- entry point;
- user intent;
- steps;
- decisions;
- system feedback;
- success outcome;
- failure/exception paths;
- exit or continuation.

Example:

Catalog → Category → Product → Add to cart → Cart → Review → WhatsApp handoff

If a flow reveals missing product behavior, route the issue instead of inventing it.

### Step 4 — Define screen inventory

For each screen/view/surface capture:
- identifier;
- purpose;
- actor;
- entry conditions;
- primary goal;
- required content;
- primary action;
- secondary actions;
- relevant states;
- dependencies;
- related requirements.

Avoid screens not justified by the product.

### Step 5 — Specify screen structure

For important screens define:
- global shell;
- navigation;
- page hierarchy;
- sections;
- content blocks;
- actions;
- forms;
- feedback;
- contextual controls;
- responsive adaptations.

This is structural specification, not production HTML/CSS.

### Step 6 — Define interaction behavior

Specify applicable behavior for:
- navigation;
- forms;
- actions;
- selection;
- filtering;
- search;
- dialogs/drawers;
- menus;
- validation;
- confirmations;
- destructive actions;
- feedback;
- loading;
- errors;
- success;
- persistence where relevant.

Do not define hidden backend behavior unless established elsewhere.

### Step 7 — Define states and edge cases

For critical components or screens, identify real user-facing states.

Example:

Product card
- available
- unavailable
- image missing

Form
- initial
- editing
- validation error
- submitting
- success
- submission error

State definitions must follow actual requirements and rules.

### Step 8 — Define the component system

Identify reusable primitives and patterns such as:
- buttons;
- inputs;
- selects;
- cards;
- navigation;
- tabs;
- dialogs;
- drawers;
- tables;
- lists;
- filters;
- notifications;
- status indicators;
- loading;
- empty;
- error states.

For important reusable components describe:
- purpose;
- variants;
- states;
- content rules;
- interaction;
- accessibility requirements;
- responsive behavior.

Do not create a component catalog merely for completeness.

### Step 9 — Define responsive behavior

Use the confirmed device context.

Describe changes across relevant widths:
- layout;
- navigation;
- density;
- ordering;
- visibility;
- controls;
- interaction method;
- typography when necessary.

Do not assume desktop is simply stretched mobile or vice versa.

### Step 10 — Define accessibility behavior

Address applicable:
- keyboard navigation;
- focus;
- semantic hierarchy;
- labels;
- validation messages;
- contrast dependencies;
- touch targets;
- screen-reader meaning;
- reduced motion;
- error identification;
- non-color communication.

Accessibility belongs inside interaction design.

### Step 11 — Validate against requirements and visual direction

Cross-check:
- functional requirements;
- business rules;
- permissions;
- acceptance criteria;
- visual principles;
- responsive constraints;
- accessibility requirements.

Identify:
- covered requirements;
- requirements needing clarification;
- unsupported requirements;
- proposals implying new functionality;
- visual conflicts;
- technical questions.

Route each conflict to the responsible skill.

## UX/UI Decisions

For significant decisions capture:
- Decision
- Status
- Rationale
- Source
- Impact
- Related requirements
- Related visual principles
- Open question, if any

Useful statuses:
- Confirmed
- Derived
- Proposed
- Open
- Blocked

Never present proposed behavior as approved.

## Output Structure

A dedicated UX/UI document should normally contain:
1. UX/UI summary
2. Actors and usage contexts
3. Information architecture
4. Navigation model
5. User journeys
6. Flow specifications
7. Screen inventory
8. Screen specifications
9. Interaction behavior
10. State and edge-case matrix
11. Component system
12. Responsive behavior
13. Accessibility behavior
14. Content and microcopy rules when relevant
15. Confirmed decisions
16. Proposed decisions
17. Open questions
18. Traceability to requirements
19. Traceability to visual direction
20. Handoff notes for approval and implementation

The output should be explicit enough that implementation does not need to rediscover basic UX/UI decisions.

## Handling Ambiguity

When information is missing:
1. Identify exactly what is missing.
2. Determine whether it blocks the current decision.
3. If not, mark it proposed/open and continue.
4. If it changes product behavior, route it to the responsible definition skill.
5. If it changes approved boundaries, route to change-management.
6. Never silently convert assumptions into approved behavior.

## Completion Criteria

UX/UI design is complete when:
- actors and contexts are understood;
- information architecture is defined;
- important journeys and flows are mapped;
- required screens are inventoried;
- important screens have structural specifications;
- interaction behavior is defined;
- relevant states and edge cases are explicit;
- reusable components and patterns are identified;
- responsive behavior is specified;
- accessibility behavior is addressed;
- decisions are separated into confirmed/derived/proposed/open;
- requirements and visual direction are traceable;
- unresolved blockers are routed;
- output is sufficient for design approval or implementation planning.

## Boundaries

This skill does not:
- redefine the product;
- invent requirements;
- silently expand scope;
- approve commercial terms;
- replace visual direction;
- choose architecture or technology stack;
- write production frontend code;
- implement components;
- replace usability research when research is required;
- silently approve unresolved product decisions.

When interface design exposes a product-level question, route it to the appropriate workflow specialist.
