# Claude Code Sugar

**English** | [中文](README_ZH.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

**Through Claude Code Sugar, you can unlock some restricted features of Claude Code and support adaptation to other models.**

The initial motivation for this project stems from a practical problem we encountered while using Claude Code: in regions outside the United States, the native **Web Search** functionality cannot be used properly, which brings inconvenience to academic research work that requires web search support.

In the process of seeking solutions, we accidentally discovered that a domestic product provides open API interfaces. Not only can the search functionality be used for free, but it also integrates multiple large language models—some of which perform excellently in code understanding and long context processing. This is undoubtedly good news for Claude Code users who want better cost-effectiveness.

Based on this discovery, we developed the Claude Code Sugar project. To preserve all of Claude Code's functionality and maintain continuous updates, we haven't modified any code of Claude Code, but instead use a lightweight proxy layer to adapt these API interfaces, thereby solving the limitation of search functionality.

Additionally, this proxy is also compatible with OpenAI protocol model calling methods.

Through Claude Code Sugar, you can continue to enjoy Claude Code's powerful capabilities while gaining more flexible API calling options.

**This project is for academic and research communication purposes only**

## Quick Installation
Use the following script for quick installation:
```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

During the installation process, you will be asked to enter a Search API Key. Go to [iFlow Open Platform](https://iflow.cn/?open=setting) to apply for a key and enter it.

Start using Claude Code at low cost:

```shell
claude
```

## How to Modify the Model
Using the installation script directly will default to using the Qwen3-Coder model, and you can use it directly without modifying any parameters.
If you want to change the model, you can edit `~/.config/claude-code-sugar/config.json` to specify model information that complies with the OpenAI protocol.

A reference example of config.json:
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