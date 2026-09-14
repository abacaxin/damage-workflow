#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET="$HOME/.claude/skills"

mkdir -p "$TARGET"

for skill_dir in "$REPO_DIR"/skills/*; do
  [ -d "$skill_dir" ] || continue
  name="$(basename "$skill_dir")"
  mkdir -p "$TARGET/$name"
  cp "$skill_dir/SKILL.md" "$TARGET/$name/SKILL.md"
  echo "installed: $name"
done

echo
echo "DAMAGE Workflow System installed at $TARGET"
echo "Restart Claude Code if it was already running."
