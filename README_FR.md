# Claude Code Sugar

[English](README_EN.md) | [中文](README.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | **Français** | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

**Grâce à Claude Code Sugar, vous pouvez débloquer certaines fonctionnalités restreintes de Claude Code et prendre en charge l'adaptation à d'autres modèles.**

La motivation initiale de ce projet découle d'un problème pratique que nous avons rencontré lors de l'utilisation de Claude Code : dans les régions en dehors des États-Unis, la fonctionnalité native de **recherche Web** ne peut pas être utilisée correctement, ce qui apporte des inconvénients au travail de recherche académique nécessitant un support de recherche web.

Dans le processus de recherche de solutions, nous avons découvert par hasard qu'un produit domestique fournit des interfaces API ouvertes. Non seulement la fonctionnalité de recherche peut être utilisée gratuitement, mais elle intègre également plusieurs modèles de langage de grande taille—dont certains excellent dans la compréhension du code et le traitement de contexte long. C'est sans aucun doute une bonne nouvelle pour les utilisateurs de Claude Code qui souhaitent un meilleur rapport coût-efficacité.

Basé sur cette découverte, nous avons développé le projet Claude Code Sugar. Pour préserver toutes les fonctionnalités de Claude Code et maintenir les mises à jour continues, nous n'avons modifié aucun code de Claude Code, mais utilisons plutôt une couche proxy légère pour s'adapter à ces interfaces API, résolvant ainsi le problème de limitation de la fonctionnalité de recherche.

De plus, ce proxy est également compatible avec les méthodes d'appel de modèles du protocole OpenAI.

Grâce à Claude Code Sugar, vous pouvez continuer à profiter des capacités puissantes de Claude Code tout en obtenant des options d'appel API plus flexibles.

**Ce projet est destiné uniquement à des fins académiques et d'échange de recherche**

## Installation rapide
Utilisez le script suivant pour une installation rapide :
```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

Le processus d'installation vous demandera de saisir une clé API de recherche. Rendez-vous sur [la plateforme ouverte iFlow](https://iflow.cn/?open=setting) pour demander une clé et la saisir.

Commencez à utiliser Claude Code à faible coût :

```shell
claude
```

## Comment modifier le modèle
En utilisant directement le script d'installation, le modèle Qwen3-Coder sera utilisé par défaut, et vous pouvez l'utiliser directement sans modifier aucun paramètre.
Si vous souhaitez changer de modèle, vous pouvez éditer `~/.config/claude-code-sugar/config.json` pour spécifier les informations du modèle conforme au protocole OpenAI.

Exemple de référence pour config.json :
``` json
{
  "baseURL": "your openai base url",
  "apiKey": "you openai api key",
  "modelMapping": {
    "claude-3-5-haiku-20241022": "your model for small task",
    "claude-3-7-sonnet-20250219": "your model for medium task",
    "claude-sonnet-4-20250514": "your model for large task",
    "claude-opus-4-20250514": "your model for large task"
  },
  "searchApiKey": "your search api key"
}
```