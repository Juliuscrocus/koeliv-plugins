# Installer Koeliv dans Claude

Comptez 5 minutes. Il vous faut un abonnement Claude payant (Pro ou plus) et l'adresse e-mail que vous avez donnée
à Koeliv. Les noms entre parenthèses sont ceux de Claude en anglais.

## 1. Ajouter le catalogue Koeliv

1. Ouvrez [claude.ai](https://claude.ai) ou l'application Claude sur votre ordinateur.
2. Dans la barre de gauche, ouvrez **Personnaliser** (Customize), puis **Plugins**.
3. Cliquez sur **Ajouter** (Add), puis **Ajouter une marketplace** (Add marketplace).
4. Collez `Juliuscrocus/koeliv-plugins` et validez.
5. Sur la marketplace Koeliv, activez **Synchroniser automatiquement** (Sync automatically) : vous recevrez les
   nouvelles versions sans rien faire.

## 2. Installer le plugin

1. Dans la liste des plugins, choisissez **Koeliv**, puis **Ajouter** (Add).
2. Ouvrez le plugin Koeliv, onglet **Connecteurs** (Connectors), et cliquez sur **Connecter** (Connect).
3. Une page Koeliv s'ouvre : saisissez votre adresse e-mail, puis le code reçu par e-mail.

Si vous aviez déjà ajouté un connecteur Koeliv à la main, retirez-le dans **Personnaliser**, **Connecteurs** : sinon
les outils apparaissent deux fois.

## 3. Essayer

Ouvrez une nouvelle conversation et demandez : « Quelles ont été mes ventes la semaine dernière ? ». Claude lit la
fiche de votre boutique, puis répond avec vos chiffres.

Les routines de Koeliv sont dans le menu **+** de la conversation, sous Koeliv : « revue_hebdo_pub » le lundi,
« point_stock » avant un réassort, « sante_site » chaque semaine, « point_mensuel » en début de mois.

Sur téléphone, l'application Claude reprend le plugin et le connecteur de votre compte.

## En cas de souci

- **« Accès refusé » à la connexion** : votre adresse n'est pas encore ouverte. Écrivez à votre interlocuteur
  Koeliv en donnant l'adresse utilisée.
- **Claude vous redemande de vous connecter** : c'est normal de temps en temps. Saisissez à nouveau votre e-mail
  et le code reçu.
- **Une nouveauté annoncée par Koeliv n'apparaît pas** : Personnaliser, Plugins, marketplace Koeliv, **Rechercher
  des mises à jour** (Check for updates).

## Claude Code

Pour l'équipe Koeliv ou les personnes qui utilisent Claude Code : un plugin installé sur votre compte claude.ai y
arrive tout seul au démarrage suivant. Sinon :

```
claude plugin marketplace add Juliuscrocus/koeliv-plugins
claude plugin install koeliv@koeliv
```

Pour les mises à jour automatiques dans Claude Code : `/plugin`, Marketplaces, koeliv, **Enable auto-update**.
