# Claude Code Sugar 🍯

[English](README.md) | **中文** | [繁體中文](README_TW.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

> **让Claude Code 顺畅运行！🌍**

## 为什么要做这个项目？

说实话，我们非常喜欢 Claude Code！但有一个很头疼的问题——如果你不在美国，网络搜索功能就用不了。对于需要查资料、做研究的同学来说，这真的很不方便。

于是我们开始寻找解决方案。结果意外发现了一个宝藏——国内有个平台提供免费的搜索 API，而且还集成了许多优秀的大语言模型！有些模型在代码理解和长文本处理方面表现特别出色，关键是**免费**！

这不正是我们想要的吗？

## Claude Code Sugar 能做什么？

我们没有修改 Claude Code 的源码（那样维护起来会很麻烦），而是做了一个轻量级的代理层，就像翻译官一样，让 Claude Code 能够与这些优秀的 API 愉快地对话。

这样你就能获得：
- ✅ Claude Code 的所有强大功能
- ✅ 全球可用的网络搜索
- ✅ 高性价比的优质模型
- ✅ 兼容 OpenAI 协议（标准很重要！）
- ✅ 无需修改 Claude Code（更新无忧）

**注意：本项目仅供学术研究交流使用。**

## 30秒快速上手 ⚡

确保你已经安装了 node.js 18+ 以上的版本，复制下面的命令行到终端，并执行：

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

安装过程中会要求输入搜索 API 密钥，前往[心流开放平台](https://docs.iflow.cn/docs/)免费申请一个即可，非常简单！🔑

然后像往常一样启动 Claude Code：

```shell
claude
```

就这样！现在你的 Claude Code 已经拥有了全球搜索能力和免费模型支持！🚀

## 想换个模型试试？🎛️

默认情况下会使用 Qwen3-Coder 模型，对大部分编程任务来说已经很棒了。但如果你想尝试其他模型或者使用自己的 API，完全没问题！

只需要编辑 `~/.config/claude-code-sugar/config.json` 文件：

```json
{
  "baseURL": "你的 OpenAI 兼容 API 地址",
  "apiKey": "你的 API 密钥", 
  "modelMapping": {
    "claude-3-5-haiku-20241022": "处理简单任务的模型",
    "claude-sonnet-4-20250514": "处理复杂任务的模型",
    "claude-opus-4-20250514": "处理重型任务的模型"
  },
  "searchApiKey": "你的搜索 API 密钥"
}
```

通过模型映射，你可以为不同复杂度的任务分配不同的模型——既能保证效果，又能控制成本！💰