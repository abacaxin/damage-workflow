# DAMAGE Codebase Indexer

## Purpose

Create a navigable structural index of an existing codebase so agents can locate relevant files without repeatedly reading the entire repository.

## Important Distinction

This creates a codebase index, not automatically a vector database.

The first layer uses file structure, symbols, imports, exports, routes, components, services, models, APIs, tests, configuration, and documentation references.

Semantic or vector search may be added later.

## Responsibilities

Inspect and identify entry points, routes, pages, components, hooks, services, API clients, backend routes, controllers, database models, schemas, authentication, environment configuration, tests, build files, deployment files, and important dependencies.

## Output

Update `docs/08-code-index.md` with project overview, entry points, routes, components, business logic, API layer, database, authentication, tests, configuration, feature map, risk areas, and index limitations.

## Rules

- Do not modify application code by default.
- Do not expose secret values.
- Do not include complete environment variable values.
- Identify uncertainty explicitly.
- Record the index date.
- Re-index after major structural changes.
- Do not treat the index as a substitute for reading relevant source files.
