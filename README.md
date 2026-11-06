# Skills da equipe BRN

Skills pra equipe do Bruno Medeiros usar no **Claude Code** e no **Codex**.

| Skill | Pra quê |
|---|---|
| `copy-viral-brnrmedeiros` | Roteiros de Reels do Instagram **@brnrmedeiros**: YAP, tela dividida (cards do Hermes), Reels 7s e o plano da Se Posicione. Escreve, corrige e dá nota em copy. **Não é pro @sistemabrn.** |

---

## Instalar sem terminal (Mac)

1. Abra o **Claude Code** ou o **Codex**.
2. Copie o prompt abaixo, cole lá e envie.
3. Quando ele pedir permissão pra rodar um comando ou mexer numa pasta, aprove.

```text
Instala pra mim a skill "copy-viral-brnrmedeiros" da equipe BRN neste Mac, no Claude Code e no Codex. Eu não uso terminal: roda tudo tu mesmo e me explica em português simples o que tá fazendo.

Repositório: https://github.com/brnagencia-tech/skills-equipe-brn

1. Confere com xcode-select -p se o git do Mac tá instalado. Se não estiver, pula direto pro passo 4.
2. Se a pasta ~/skills-equipe-brn já existe, entra nela e roda git pull. Se não existe, roda: git clone https://github.com/brnagencia-tech/skills-equipe-brn.git ~/skills-equipe-brn
3. Roda: bash ~/skills-equipe-brn/install.sh e vai pro passo 5.
4. Se não tiver git ou se der erro: baixa https://github.com/brnagencia-tech/skills-equipe-brn/archive/refs/heads/main.zip com curl, descompacta numa pasta temporária e copia a pasta skills/copy-viral-brnrmedeiros pra ~/.claude/skills/ e pra ~/.agents/skills/. Cria as pastas se não existirem e substitui se já tiver uma versão antiga.
5. Confere se existem ~/.claude/skills/copy-viral-brnrmedeiros/SKILL.md e ~/.agents/skills/copy-viral-brnrmedeiros/SKILL.md e me diz pra fechar e abrir de novo o Claude Code e o Codex.

Não mexe em nenhuma outra skill nem em outras pastas.
```

4. Feche e abra de novo o Claude Code e o Codex.

**Pra atualizar depois, cole o mesmo prompt de novo.**

---

## Instalar pelo Terminal (Mac ou Linux)

```bash
git clone https://github.com/brnagencia-tech/skills-equipe-brn.git ~/skills-equipe-brn
cd ~/skills-equipe-brn
bash install.sh
```

O `install.sh` liga a skill nos dois de uma vez:

- Claude Code → `~/.claude/skills/copy-viral-brnrmedeiros`
- Codex → `~/.agents/skills/copy-viral-brnrmedeiros`

**Não apague nem mova a pasta `~/skills-equipe-brn`**: a skill instalada aponta pra ela.

Pra atualizar: `cd ~/skills-equipe-brn && git pull`

## Instalar no Windows

1. Baixe o repositório (botão verde **Code → Download ZIP**) e descompacte.
2. Copie a pasta `skills\copy-viral-brnrmedeiros` para estes dois lugares (crie as pastas se não existirem):
   - `%USERPROFILE%\.claude\skills\` (Claude Code)
   - `%USERPROFILE%\.agents\skills\` (Codex)
3. Feche e abra de novo o Claude Code e o Codex.

No Windows, pra atualizar, baixe de novo e substitua as duas pastas.

---

## Como usar

**Claude Code:** digite `/copy-viral-brnrmedeiros` e o pedido. Ou só peça normalmente que ele usa a skill sozinho.

**Codex:** digite `$copy-viral-brnrmedeiros` e o pedido, ou escolha a skill em `/skills`. O Codex precisa estar atualizado (as versões antigas não leem a pasta `~/.agents/skills`).

Exemplos de pedido:

- `YAP sobre o lançamento do Opus 5.5`
- `Corrige esse card do Hermes:` (e cole o card inteiro)
- `Roteiros do dia 12 do plano Se Posicione:` (e cole o dia do plano)
- `Dá nota nessa copy:` (e cole a copy)

O que a skill não souber da vida do Bruno ela marca como `[CONFERIR: ...]`. Esses pontos precisam de resposta dele antes de gravar.

## Mudanças na skill

Não edite a skill na tua máquina (a atualização vai sobrescrever). Achou algo pra melhorar? Manda pro Bruno.

## Desinstalar

Peça pro Claude Code ou pro Codex: `Apaga a skill copy-viral-brnrmedeiros de ~/.claude/skills e de ~/.agents/skills.`
