#!/usr/bin/env bash
# Contrôles du catalogue public : format du plugin, adresse du connecteur, rien qui n'a sa place dans un dépôt public.
set -euo pipefail
cd "$(dirname "$0")/.."
fail=0

# Le plugin n'a pas de version : chaque commit sur main en est une (voir README).
if grep -q '"version"' .claude-plugin/marketplace.json plugins/koeliv/.claude-plugin/plugin.json; then
  echo "version interdite : les clientes suivent les commits de main"; fail=1
fi

# Une seule adresse de connecteur, la porte publique de Koeliv, en https.
url=$(python3 -c 'import json;print(json.load(open("plugins/koeliv/.mcp.json"))["mcpServers"]["koeliv"]["url"])')
case "$url" in https://*/mcp) ;; *) echo "adresse du connecteur inattendue : $url"; fail=1 ;; esac
grep -rq -- "$url" guides/chatgpt.md || { echo "guides/chatgpt.md ne donne pas l'adresse du connecteur"; fail=1; }

# Ni adresse e-mail, ni secret.
if git ls-files -z | xargs -0 grep -nIE '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-z]{2,}' ; then
  echo "adresse e-mail interdite dans un dépôt public"; fail=1
fi
if git ls-files -z | xargs -0 grep -nIiE '(secret|token|password|api[_-]?key)["'\'' ]*[:=]' ; then
  echo "secret probable"; fail=1
fi

# Pas de bin/ : claude.ai refuserait d'installer le plugin.
[ ! -e plugins/koeliv/bin ] || { echo "bin/ interdit : claude.ai refuse le plugin"; fail=1; }

[ "$fail" = 0 ] && echo "contrôles du catalogue : OK"
exit "$fail"
