# DAMAGE Workflow System — Decisões Estruturais

Este documento registra decisões arquiteturais fundamentais tomadas durante a reconstrução do DAMAGE Workflow System. Elas são normativas para o desenho das skills futuras e não devem ser alteradas implicitamente durante a implementação.

## Decisão 001 — `workflow-master` é uma camada permanente de controle

**Status:** Confirmada

A `workflow-master` não é uma etapa executada uma única vez. Ela é a camada transversal de orquestração do DAMAGE Workflow e deve permanecer conceitualmente ativa durante todo o ciclo de vida de um projeto.

Sua responsabilidade é observar o estado atual do projeto e determinar qual especialista deve atuar em cada momento.

A `workflow-master` deve:

- ler o estado persistente do projeto;
- identificar a fase, subfase ou situação atual;
- verificar pendências, bloqueios, dependências e aprovações;
- determinar a próxima ação apropriada;
- encaminhar o agente para a skill especializada responsável;
- impedir saltos de processo que não tenham justificativa;
- detectar pedidos que alterem requisitos ou escopo;
- acionar `change-management` quando uma mudança afetar decisões já estabelecidas;
- distinguir ações automatizáveis de ações que exigem aprovação humana;
- manter o fluxo coerente sem assumir o trabalho especializado das outras skills.

A `workflow-master` é, portanto, o **sistema operacional do workflow**. As demais skills são especialistas executados sob sua coordenação.

Ela não deve concentrar todas as responsabilidades em uma única skill. Seu papel é decidir **quem deve agir, quando e por quê**.

### Máquina de estados

O workflow deve ser modelado como uma máquina de estados com transições controladas, e não apenas como uma lista linear de etapas.

Exemplos de transições válidas:

```text
IMPLEMENTATION
    ↓
problema arquitetural detectado
    ↓
TECHNICAL_PLANNING
    ↓
IMPLEMENTATION
```

```text
IMPLEMENTATION
    ↓
pedido altera escopo
    ↓
CHANGE_MANAGEMENT
    ↓
SCOPE
    ↓
APPROVAL (quando aplicável)
    ↓
IMPLEMENTATION
```

O projeto pode retornar a uma etapa anterior quando novas informações ou mudanças justificarem isso. O retorno deve ser explícito, registrado e controlado pela `workflow-master`.

---

## Decisão 002 — Definição do projeto é um bloco adaptativo, não um pipeline linear rígido

**Status:** Confirmada

Após `project-discovery`, as skills responsáveis por definir o produto não devem ser tratadas como uma sequência rígida em que cada etapa acontece exatamente uma vez.

O bloco de definição deve funcionar de maneira adaptativa e permitir dependências, revisões e loops entre suas áreas.

As responsabilidades principais são:

- `requirements-definition` — **o que o sistema precisa fazer**;
- `scope-definition` — **até onde o projeto vai**;
- `design-direction` — **como o produto deve se apresentar e se comportar visualmente**;
- `technical-planning` — **como o produto será construído**.

Essas áreas são distintas, mas interdependentes.

Uma decisão tomada em uma delas pode revelar uma necessidade de revisão em outra. Portanto, uma skill deve poder devolver uma questão para outra área quando houver conflito, ambiguidade, impacto relevante ou informação nova.

Exemplo:

```text
PROJECT DISCOVERY
        ↓
┌───────────────────────────────────────┐
│       PROJECT DEFINITION BLOCK        │
│                                       │
│ Requirements ↔ Scope ↔ Design        │
│       ↕             ↕                │
│          Technical Planning           │
│                                       │
│   revisões e dependências permitidas  │
└───────────────────────────────────────┘
        ↓
APPROVALS (quando aplicável)
        ↓
PREPARATION
        ↓
IMPLEMENTATION
```

Isso significa que:

- requisitos podem revelar uma mudança de escopo;
- escopo pode limitar ou alterar uma decisão de design;
- design pode revelar requisitos de interação ou conteúdo;
- requisitos e escopo podem exigir uma mudança técnica;
- planejamento técnico pode revelar que um requisito precisa ser esclarecido;
- nenhuma dessas revisões deve ser tratada como erro do workflow; elas são parte normal de uma definição bem feita.

`project-discovery` continua sendo a etapa inicial de descoberta e entendimento. O bloco seguinte transforma esse entendimento em definições verificáveis para orientar construção e aprovação.

### Regra fundamental

O DAMAGE Workflow deve priorizar **coerência e completude das decisões**, e não a aparência de progresso linear.

Não avançar apenas para cumprir uma ordem de etapas. Se uma etapa posterior revelar uma questão estrutural, o workflow deve retornar à área responsável, registrar a mudança e continuar somente quando o estado estiver consistente.

---

## Impacto das duas decisões

Essas duas decisões estabelecem a base da arquitetura do DAMAGE Workflow:

1. `workflow-master` é transversal e permanente.
2. O bloco de definição é adaptativo e possui loops controlados.

Consequentemente, a lista de skills não deve ser interpretada como uma simples fila de execução. Ela representa um conjunto de especialistas dentro de um sistema coordenado por estado, dependências, aprovações e transições.

Qualquer nova skill deve declarar claramente:

- qual responsabilidade possui;
- em que estados pode ser acionada;
- quais documentos lê;
- quais documentos produz ou altera;
- quais skills pode acionar ou solicitar revisão;
- quais condições permitem concluir sua atuação;
- quais mudanças devem retornar ao `workflow-master`.
