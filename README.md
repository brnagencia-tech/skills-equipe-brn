# Skills da equipe BRN

Skills pra equipe do Bruno Medeiros usar no **Claude Code** e no **Codex**.

| Skill | Pra quê |
|---|---|
| `copy-viral-brnrmedeiros` | Roteiros de Reels do Instagram **@brnrmedeiros**: YAP, tela dividida (cards do Hermes), Reels 7s e o plano da Se Posicione. Escreve, corrige e dá nota em copy. **Não é pro @sistemabrn.** |

> Repositório privado. Não compartilhe, não copie pra fora da equipe.

---

## Instalar no Mac (ou Linux)

1. Abra o **Terminal**.
2. Copie e cole estes 3 comandos, um de cada vez:

```bash
git clone https://github.com/brnagencia-tech/skills-equipe-brn.git ~/skills-equipe-brn
cd ~/skills-equipe-brn
bash install.sh
```

3. Feche e abra de novo o Claude Code e o Codex.

O `install.sh` liga a skill nos dois de uma vez:

- Claude Code → `~/.claude/skills/copy-viral-brnrmedeiros`
- Codex → `~/.agents/skills/copy-viral-brnrmedeiros`

**Não apague nem mova a pasta `~/skills-equipe-brn`**: a skill instalada aponta pra ela.

Se o `git clone` pedir login, entre com a tua conta do GitHub (o Bruno precisa ter te adicionado no repositório antes).

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

**Codex:** digite `$copy-viral-brnrmedeiros` e o pedido, ou escolha a skill em `/skills`.

Exemplos de pedido:

- `YAP sobre o lançamento do Opus 5.5`
- `Corrige esse card do Hermes:` (e cole o card inteiro)
- `Roteiros do dia 12 do plano Se Posicione:` (e cole o dia do plano)
- `Dá nota nessa copy:` (e cole a copy)

O que a skill não souber da vida do Bruno ela marca como `[CONFERIR: ...]`. Esses pontos precisam de resposta dele antes de gravar.

---

## Atualizar (Mac/Linux)

```bash
cd ~/skills-equipe-brn && git pull
```

Pronto, as duas ferramentas já pegam a versão nova. Se não aparecer, feche e abra de novo.

## Mudanças na skill

Não edite a skill na tua máquina (o `git pull` vai dar conflito). Achou algo pra melhorar? Manda pro Bruno.

## Desinstalar (Mac/Linux)

```bash
rm ~/.claude/skills/copy-viral-brnrmedeiros ~/.agents/skills/copy-viral-brnrmedeiros
```
