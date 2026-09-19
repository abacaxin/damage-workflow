#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/abacaxin/damage-workflow.git"
INSTALL_DIR="${HOME}/.damage-workflow"
SKILLS_DIR="${HOME}/.agents/skills"

install_skills() {
  mkdir -p "${SKILLS_DIR}"

  if [ -d "${INSTALL_DIR}/.git" ]; then
    git -C "${INSTALL_DIR}" pull --ff-only
  else
    rm -rf "${INSTALL_DIR}"
    git clone --depth 1 "${REPO_URL}" "${INSTALL_DIR}"
  fi

  find "${INSTALL_DIR}/skills" -mindepth 2 -maxdepth 2 -type f -name "SKILL.md" -print0 |
  while IFS= read -r -d '' skill_file; do
    skill_dir="$(dirname "${skill_file}")"
    skill_name="$(basename "${skill_dir}")"
    rm -rf "${SKILLS_DIR}/${skill_name}"
    cp -R "${skill_dir}" "${SKILLS_DIR}/${skill_name}"
    echo "  ✓ ${skill_name}"
  done
}

case "${1:-install}" in
  install|update)
    echo "Installing/updating DAMAGE Workflow skills..."
    install_skills
    echo "Done. Skills installed in ${SKILLS_DIR}."
    ;;
  *)
    echo "Usage: dmg install"
    echo "       dmg update"
    exit 1
    ;;
esac
