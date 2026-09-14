#!/usr/bin/env bash
set -euo pipefail
TARGET="$HOME/.claude/skills"
SKILLS=(workflow-master init-project project-state requirements-definition scope-definition technical-planning master-prompt codebase-indexer)
for name in "${SKILLS[@]}"; do
  if [ -d "$TARGET/$name" ]; then
    rm -rf "$TARGET/$name"
    echo "removed: $name"
  fi
done
echo "DAMAGE Workflow System removed."
