# Claude Code Sugar 🍯

[English](README.md) | [中文](README_ZH.md) | [繁體中文](README_TW.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | **Français** | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

> **Rendons Claude Code délicieusement accessible partout dans le monde ! 🌍**

## Pourquoi avons-nous créé ce projet ?

Soyons francs : nous adorons Claude Code ! Mais nous avons rencontré un problème frustrant. Si vous n'êtes pas aux États-Unis, la fonction de recherche web ne fonctionne tout simplement pas. Et quand vous faites de la recherche ou que vous avez besoin de chercher des informations en codant, c'est vraiment embêtant.

Alors nous sommes partis à la chasse aux solutions. Et devinez quoi ? Nous avons fait une découverte formidable ! Il existe des API qui offrent non seulement des capacités de recherche gratuites, mais aussi l'accès à des modèles de langage impressionnants. Certains de ces modèles sont en fait *meilleurs* pour comprendre le code et gérer de longs contextes que ce qu'on pourrait attendre !

Cela nous a fait réfléchir : "Et si nous pouvions offrir aux utilisateurs de Claude Code le meilleur des deux mondes ?"

## Ce que fait Claude Code Sugar

Au lieu de pirater Claude Code lui-même (ce qui serait un cauchemar de maintenance), nous avons construit un proxy léger qui se situe entre Claude Code et ces API. Pensez-y comme à un traducteur qui parle à la fois le langage de Claude Code et celui de ces API puissantes.

Le résultat ? Vous obtenez :
- ✅ Toutes les fonctionnalités extraordinaires de Claude Code
- ✅ Une recherche web qui fonctionne vraiment partout dans le monde
- ✅ L'accès à des modèles performants et économiques
- ✅ La compatibilité avec le protocole OpenAI (les standards, c'est important)
- ✅ Aucune modification de Claude Code (les mises à jour fonctionnent simplement)

**Note : Ce projet est destiné à des fins académiques et de recherche.**

## Démarrez en 30 secondes ⚡

Prêt à booster votre expérience Claude Code ? Lancez simplement ceci :

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

L'installateur vous demandera une clé API de recherche - rendez-vous simplement sur [la plateforme ouverte iFlow](https://iflow.cn/?open=setting), récupérez votre clé gratuite, et collez-la. Un jeu d'enfant ! 🔑

Puis lancez Claude Code comme vous le feriez normalement :

```shell
claude
```

Et voilà ! Vous utilisez maintenant Claude Code avec des pouvoirs de recherche globaux et l'accès à des modèles économiques. 🚀

## Envie d'essayer différents modèles ? 🎛️

Par défaut, Claude Code Sugar utilise le modèle Qwen3-Coder, qui est plutôt solide pour la plupart des tâches de codage. Mais peut-être voulez-vous expérimenter avec différents modèles ou utiliser vos propres endpoints API !

Aucun problème ! Éditez simplement `~/.config/claude-code-sugar/config.json` et personnalisez à volonté :

```json
{
  "baseURL": "votre URL de base OpenAI",
  "apiKey": "votre clé API", 
  "modelMapping": {
    "claude-3-5-haiku-20241022": "votre modèle pour les petites tâches",
    "claude-3-7-sonnet-20250219": "votre modèle pour les tâches moyennes", 
    "claude-sonnet-4-20250514": "votre modèle pour les grandes tâches",
    "claude-opus-4-20250514": "votre modèle pour les tâches lourdes"
  },
  "searchApiKey": "votre clé API de recherche"
}
```

Le mapping de modèles vous permet d'assigner différents modèles à différents niveaux de complexité - plutôt malin pour optimiser à la fois les performances et les coûts ! 💰