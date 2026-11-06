#!/usr/bin/env bash
# Instala as skills deste repositório no Claude Code e no Codex.
# Cria um atalho (link) de cada skill pra esta pasta, então um "git pull" já atualiza tudo.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$HOME/.skills-backup/$(date +%Y%m%d-%H%M%S)"

DESTINOS=(
  "$HOME/.claude/skills"   # Claude Code
  "$HOME/.agents/skills"   # Codex
)

for skill_dir in "$REPO_DIR"/skills/*/; do
  skill_dir="${skill_dir%/}"
  nome="$(basename "$skill_dir")"
  [ -f "$skill_dir/SKILL.md" ] || continue

  for destino in "${DESTINOS[@]}"; do
    mkdir -p "$destino"
    alvo="$destino/$nome"

    if [ -L "$alvo" ]; then
      rm "$alvo"
    elif [ -e "$alvo" ]; then
      # Já existe uma pasta com esse nome: guarda fora da pasta de skills pra não carregar duas vezes.
      mkdir -p "$BACKUP_DIR"
      mv "$alvo" "$BACKUP_DIR/$(basename "$destino")-$nome"
      echo "  (a versão antiga foi guardada em $BACKUP_DIR)"
    fi

    ln -s "$skill_dir" "$alvo"
    echo "✔ $nome → $alvo"
  done
done

echo
echo "Pronto. Feche e abra de novo o Claude Code e o Codex."
echo "Não apague nem mova a pasta $REPO_DIR: as skills apontam pra ela."
