# Claude Code Sugar

[English](README_EN.md) | **中文** | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

**通过Claude Code Sugar，可以接触Claude Code的一些限制功能，并支持适配其他模型。**

做这个项目的初衷，源于我们在使用Claude Code时遇到的一个实际问题：在非美国地区，原生的 **Web Search** 功能无法正常使用，这给需要网络搜索支持的学术研究工作带来了不便。

在寻找解决方案的过程中，我们意外发现国内有一个产品提供了开放的API接口，不仅搜索功能可以免费使用，还集成了多种大语言模型——其中一些模型在代码理解和长上下文处理方面表现优秀。这对于希望获得更好性价比的Claude Code用户来说，无疑是个好消息。

基于这个发现，我们开发了Claude Code Sugar项目。为了保留Claude Code所有的功能并能保持持续更新，我们没有改动Claude Code的任何代码，而是通过一个轻量级的proxy层来适配这些API接口，从而解决了搜索功能的限制问题。

此外，这个proxy还兼容了OpenAI协议的模型调用方式。

通过Claude Code Sugar，你可以继续享受Claude Code的强大能力，同时获得更灵活的API调用选择。

**本项目仅供学术、研究交流使用**

## 快速安装
使用如下脚本进行快速安装。 
```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

安装过程会要求您输入Search API Key，前往[心流开放平台](https://iflow.cn/?open=setting)申请一个Key填入。

开始低成本使用 Claude Code。

```shell
claude
```

## 如何修改模型
直接使用安装脚本，会默认使用Qwen3-Coder模型，你无需修改任何参数即可直接使用。
如果你想更换模型，可以通过编辑`~/.config/claude-code-sugar/config.json`指定符合openai协议的模型信息即可。

一个config.json的参考样例：
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