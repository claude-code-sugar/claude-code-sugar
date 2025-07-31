# Claude Code Sugar 🍯

**English** | [中文](README_ZH.md) | [繁體中文](README_TW.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

> **Sweet enhancements for Claude Code - because coding should be delightful everywhere! 🌍**

## Why We Built This

Hey there! 👋 Let's be honest - we love Claude Code, but we ran into a frustrating problem. If you're not in the US, the web search feature just... doesn't work. And when you're doing research or need to look things up while coding, that's a real pain.

So we went on a hunt for solutions. And guess what? We stumbled upon something pretty cool - there are APIs out there that not only give you free search capabilities, but also access to some seriously impressive language models. Some of these models are actually *better* at understanding code and handling long contexts than what you might expect!

That got us thinking: "What if we could give Claude Code users the best of both worlds?"

## What Claude Code Sugar Does

Instead of hacking Claude Code itself (which would be a maintenance nightmare), we built a lightweight proxy that sits between Claude Code and these APIs. Think of it as a translator that speaks both Claude Code's language and the language of these powerful APIs.

The result? You get:
- ✅ All of Claude Code's amazing features
- ✅ Web search that actually works globally  
- ✅ Access to cost-effective, high-performance models
- ✅ OpenAI protocol compatibility (because standards matter)
- ✅ Zero modifications to Claude Code (so updates just work)

**Note: This project is intended for academic and research purposes.**

## Get Started in 30 Seconds ⚡

Make Sure you have node.js 18+ installed, then just run this script in terminal:

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

The installer will ask for a Search API Key - just hop over to [iFlow Open Platform](https://docs.iflow.cn/en/docs/), grab your free key, and paste it in. Easy peasy! 🔑

Then fire up Claude Code like you normally would:

```shell
claude
```

That's it! You're now running Claude Code with global search powers and access to cost-effective models. 🚀

## Want to Use Different Models? 🎛️

Out of the box, Claude Code Sugar uses the Qwen3-Coder model, which is pretty solid for most coding tasks. But hey, maybe you want to experiment with different models or use your own API endpoints!

No problem! Just edit `~/.config/claude-code-sugar/config.json` and customize away:

```json
{
  "baseURL": "your openai base url",
  "apiKey": "your openai api key", 
  "modelMapping": {
    "claude-3-5-haiku-20241022": "your model for small tasks",
    "claude-sonnet-4-20250514": "your model for large tasks",
    "claude-opus-4-20250514": "your model for heavy-duty tasks"
  },
  "searchApiKey": "your search api key"
}
```

The model mapping lets you assign different models to different complexity levels - pretty neat for optimizing both performance and costs! 💰