---
name: design-direction
description: Define a coherent visual and brand direction for a product from its approved discovery and requirements. Establishes visual principles, atmosphere, references, typography, color, imagery, composition, interaction language, responsive principles, consistency rules, and visual constraints before detailed UX/UI design. Use when a project needs its visual direction established or revised.
---

# Design Direction

## Purpose

Establish the visual language and design principles that will guide the product before detailed UX/UI design begins.

This skill answers:

- What should the product feel like?
- What visual language should it communicate?
- What design principles should guide decisions?
- What visual references and patterns are appropriate?
- What should be consistent across the product?
- What should explicitly be avoided?

It does not design every screen, produce implementation code, or replace UX/UI design.

The direction must be grounded in the project's discovery, requirements, decisions, and confirmed brand context. Do not invent brand facts, references, assets, or preferences and present them as approved.

## Position in the Workflow

Design direction belongs to the adaptive definition/design block.

It normally consumes:

- `docs/01-project-discovery.md`
- `docs/02-requirements.md`
- `docs/07-decisions.md`
- `.damage/config.yaml`
- existing brand/design documentation when available

It normally produces:

- `docs/05-visual-spec.md`

It may return to:

- `project-discovery` when the product context itself is incomplete
- `requirements-definition` when a visual decision exposes a missing product requirement
- `change-management` when the requested direction materially changes an approved decision or project boundary

Detailed UX/UI design follows this skill.

## Core Principles

### 1. Separate confirmed direction from exploration

Every important visual decision should be identifiable as one of:

- Confirmed — explicitly approved or established by the project.
- Derived — a reasonable consequence of confirmed project information.
- Proposed — a recommendation that still requires approval.
- Reference — inspiration or precedent, not a requirement.
- Open — information that is still missing.

Never convert a reference into an instruction without justification.

### 2. Preserve product identity

The visual direction must support the actual product, audience, positioning, and use context.

Avoid generic aesthetic prescriptions such as "modern", "premium", or "minimal" without explaining how those qualities manifest visually.

### 3. Design systems before screens

Define reusable visual principles before individual screens.

The direction should establish the rules from which screens and components can later be designed consistently.

### 4. Do not solve UX problems with visual assumptions

A visual choice must not silently introduce new product behavior.

If a design decision requires a new feature, permission, state, data field, workflow, or business rule, flag it and route it to the appropriate skill.

### 5. Design for the actual environment

Consider confirmed:

- primary device
- screen sizes
- lighting/context of use
- input method
- accessibility requirements
- brand assets
- content characteristics
- localization requirements

Do not assume these when the project has not established them.

## Inputs

Before defining direction, inspect the available project context.

At minimum:

1. Project discovery.
2. Requirements.
3. Confirmed decisions.
4. Existing visual/brand assets and documentation, when available.
5. Existing product UI, when the project is an iteration or redesign.

If an essential input is missing, identify the gap rather than inventing it.

## Adaptive Process

### Step 1 — Establish the visual objective

Extract:

- product purpose
- target audience
- usage context
- desired perception
- brand personality when established
- product positioning when established
- important emotional or functional qualities

Translate these into visual objectives.

Example:

"Mobile-first restaurant catalog" is a product fact.

"Large food photography should dominate product presentation" can be a derived visual principle if supported by the product's purpose and requirements.

### Step 2 — Identify visual constraints

Record constraints such as:

- existing logo
- existing brand colors
- typography requirements
- required imagery
- accessibility constraints
- platform limitations
- content density
- localization
- existing component/system constraints

Distinguish hard constraints from preferences.

### Step 3 — Define visual language

Establish the visual vocabulary.

Consider:

- overall visual character
- composition
- spacing rhythm
- density
- shape language
- corner/radius language
- borders and dividers
- elevation/shadows
- contrast
- texture
- motion language
- visual hierarchy

Avoid vague adjectives without concrete consequences.

### Step 4 — Define color strategy

Document:

- primary colors
- secondary colors
- neutrals
- semantic colors
- background/surface strategy
- contrast expectations
- light/dark mode if relevant
- customization rules when applicable

If exact values are not known, define the role and relationship of colors rather than inventing arbitrary hex values.

### Step 5 — Define typography

Document:

- type roles
- hierarchy
- display/body/caption usage
- weight strategy
- readability requirements
- numerical/data treatment where relevant
- fallback strategy when known

Do not select a specific font as approved unless the project has confirmed it or the direction explicitly marks it as proposed.

### Step 6 — Define imagery and media

Establish rules for:

- photography
- illustrations
- icons
- product imagery
- aspect ratios
- cropping
- focal points
- backgrounds
- image treatment
- loading/placeholder behavior at a visual level

Do not invent unavailable assets.

### Step 7 — Define composition and responsive principles

Establish high-level rules for:

- hierarchy
- alignment
- grid
- spacing
- content width
- mobile behavior
- tablet/desktop adaptation
- density changes

This is directional, not a screen-by-screen specification.

### Step 8 — Define interaction and motion language

When the product requires interaction, establish:

- transition character
- feedback style
- hover/focus/pressed language
- entrance/exit behavior
- motion intensity
- reduced-motion considerations

Do not define new product behavior merely because an animation would look good.

### Step 9 — Establish consistency and anti-patterns

Document:

- reusable principles
- visual patterns to repeat
- patterns to avoid
- examples of inconsistency
- rules for future screens/components

A strong direction explains not only what the product is, but also what it is not.

### Step 10 — Validate against requirements

Check that the direction supports:

- primary user journeys
- information hierarchy
- responsive requirements
- accessibility requirements
- content types
- product positioning
- confirmed brand constraints

If it does not, do not force the design. Route the conflict back to the appropriate definition skill.

## Visual Decisions

For each significant decision, capture:

- Decision
- Status
- Rationale
- Source
- Impact
- Open question, if any

Example:

```text
Decision: Product imagery uses large editorial crops.
Status: Derived
Rationale: The product is centered on visual presentation of restaurant dishes.
Source: Discovery + requirements.
Impact: Product cards and detail views need image-first composition.
```

## Output: docs/05-visual-spec.md

The resulting document should normally contain:

1. Visual direction summary
2. Product and audience context
3. Design objectives
4. Visual principles
5. Brand constraints
6. Color strategy
7. Typography
8. Imagery and media
9. Layout and composition
10. Shape, borders, surfaces, and elevation
11. Interaction and motion language
12. Responsive principles
13. Accessibility considerations
14. Component consistency principles
15. Anti-patterns / things to avoid
16. References and inspiration
17. Confirmed decisions
18. Proposed decisions
19. Open questions
20. Traceability to discovery and requirements
21. Handoff notes for UX/UI design

The document should make it possible for the next skill to design interfaces without having to rediscover the project's visual language.

## References

References are evidence or inspiration, not automatic requirements.

For every meaningful reference, record:

- source
- what is being referenced
- what should be learned from it
- what should not be copied
- whether it is approved or exploratory

Do not reproduce another product's visual identity merely because it was mentioned as inspiration.

## Handling Ambiguity

When important information is missing:

1. Identify exactly what is missing.
2. Determine whether the gap blocks visual direction.
3. If not blocking, mark a proposal/open question and continue.
4. If blocking, ask the responsible stakeholder or return to the appropriate workflow skill.
5. Never silently convert an assumption into an approved decision.

## Completion Criteria

Design direction is complete when:

- the visual objective is explicit
- visual principles are coherent
- brand constraints are recorded
- color strategy is defined to the appropriate level
- typography direction is defined to the appropriate level
- imagery/media rules are established
- composition and responsive principles are established
- interaction/motion language is defined when relevant
- accessibility considerations are acknowledged
- anti-patterns are documented
- confirmed/proposed/open decisions are separated
- relevant requirements are traceable
- unresolved blockers are routed
- the output is sufficient for UX/UI design to proceed

## Boundaries

This skill does not:

- redefine the product
- invent requirements
- approve commercial scope
- choose implementation architecture
- choose a technology stack
- implement UI
- write production frontend code
- replace UX research
- replace detailed UX/UI design
- silently approve unresolved visual decisions

When a visual question changes product behavior, route it back to the appropriate workflow skill.
