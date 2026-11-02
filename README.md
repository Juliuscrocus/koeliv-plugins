# Catalogue Koeliv pour Claude

Ce dépôt est le catalogue de plugins de [Koeliv](https://koeliv.com) pour Claude. Il contient un seul plugin,
`koeliv`, qui met les chiffres d'une boutique suivie par Koeliv dans Claude : ventes Shopify, publicité Google,
stock, site, lus avec la fiche de la boutique.

Le plugin est réservé aux clients de Koeliv. Il ne contient aucune donnée : il apporte une consigne courte (la
skill `koeliv`) et l'adresse du connecteur Koeliv. Les données restent sur les serveurs de Koeliv et ne sont
accessibles qu'après connexion avec une adresse e-mail que Koeliv a ouverte, pour la seule boutique liée à cette
adresse.

## Installer

- Claude (claude.ai, application de bureau, Claude Code) : [guides/claude.md](guides/claude.md)
- ChatGPT (connecteur seul, sans plugin) : [guides/chatgpt.md](guides/chatgpt.md)

En bref, dans Claude : Personnaliser, Plugins, Ajouter, Ajouter une marketplace, puis `Juliuscrocus/koeliv-plugins`.

## Mises à jour

Le plugin ne porte pas de numéro de version : chaque modification publiée sur la branche `main` est une nouvelle
version. Dans Claude, activez « Sync automatically » sur la marketplace pour la recevoir sans rien faire.

Les outils, les consignes détaillées et les routines viennent du serveur Koeliv : ils changent pour tout le monde
dès que Koeliv les met à jour, sans nouvelle version du plugin.

## Contenu

```
.claude-plugin/marketplace.json     le catalogue (un plugin)
plugins/koeliv/.claude-plugin/      le manifeste du plugin
plugins/koeliv/.mcp.json            l'adresse du connecteur Koeliv
plugins/koeliv/skills/koeliv/       la consigne pour Claude
guides/                             les guides d'installation
```

Aucun secret, aucune adresse e-mail et aucun nom de client ne doit entrer dans ce dépôt : il est public.
`scripts/check.sh` le vérifie à chaque modification.
