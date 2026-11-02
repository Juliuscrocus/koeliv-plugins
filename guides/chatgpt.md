# Utiliser Koeliv dans ChatGPT

ChatGPT n'a pas de plugins : vous ajoutez seulement le connecteur Koeliv. Les consignes de Koeliv arrivent avec le
connecteur. Comptez 5 minutes. Il vous faut un abonnement ChatGPT payant qui donne accès au mode développeur
(selon les offres OpenAI du moment) et l'adresse e-mail que vous avez donnée à Koeliv.

## 1. Activer le mode développeur

1. Ouvrez [chatgpt.com](https://chatgpt.com) sur votre ordinateur.
2. Ouvrez **Paramètres**, puis **Applications et connecteurs** (Apps & Connectors).
3. Ouvrez **Paramètres avancés** et activez le **Mode développeur** (Developer mode).

## 2. Ajouter le connecteur Koeliv

1. Toujours dans **Applications et connecteurs**, cliquez sur **Créer** (Create).
2. Nom : `Koeliv`. Adresse du serveur MCP : `https://koeliv-mcp.koeliv.workers.dev/mcp`.
3. Authentification : **OAuth**. Laissez vides les champs d'identifiant et de secret.
4. Cochez la case de confiance, puis **Créer**.
5. Une page Koeliv s'ouvre : saisissez votre adresse e-mail, puis le code reçu par e-mail.

## 3. Essayer

Dans une nouvelle conversation, cliquez sur **+**, puis **Plus**, **Mode développeur**, et choisissez Koeliv.
Demandez : « Lis la fiche de ma boutique, puis donne-moi mes ventes de la semaine dernière. »

Tous les outils Koeliv sont en lecture seule : ChatGPT ne vous demande pas de confirmation à chaque appel.

## En cas de souci

- **« Accès refusé » à la connexion** : votre adresse n'est pas encore ouverte. Écrivez à votre interlocuteur
  Koeliv en donnant l'adresse utilisée.
- **La connexion boucle ou échoue** : supprimez le connecteur, déconnectez-vous de ChatGPT, reconnectez-vous et
  recommencez l'étape 2.
- **Pas de bouton Créer** : sur un compte d'entreprise, seul un administrateur peut ajouter le connecteur.
