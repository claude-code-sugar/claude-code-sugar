# Claude Code Sugar 🍯

[English](README.md) | [中文](README_ZH.md) | **繁體中文** | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

> **讓Claude Code在全球都能甜蜜運行！🌍**

## 為什麼要做這個專案？

老實說，我們真的很愛Claude Code！但遇到一個超困擾的問題——如果你不在美國，網路搜尋功能就是不能用。對需要查資料、做研究的朋友們來說，這真的很麻煩耶。

所以我們就開始四處找解決方案。結果意外挖到寶了——有個平台提供免費的搜尋API，而且還整合了一堆超強的大語言模型！有些模型在程式碼理解和長文本處理方面真的表現得很讚，CP值也超高的。

這不就是我們一直在找的嗎？

## Claude Code Sugar 能做什麼？

我們沒有去動Claude Code的原始碼（那樣維護起來會很頭痛），而是做了一個輕量級的代理層，就像個中間人一樣，讓Claude Code可以和這些優秀的API順利溝通。

這樣你就可以享受到：
- ✅ Claude Code的所有強大功能
- ✅ 全球都能用的網路搜尋
- ✅ CP值超高的優質模型
- ✅ 支援OpenAI協定（標準化很重要！）
- ✅ 不用改Claude Code（更新免煩惱）

**注意：本專案僅供學術研究交流使用喔。**

## 30秒快速上手 ⚡

準備好體驗升級版的Claude Code了嗎？一行指令就搞定：

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

安裝過程中會請你輸入搜尋API金鑰，到[心流開放平台](https://docs.iflow.cn/zh-Hant/docs/)免費申請一個就可以了，超簡單的啦！🔑

接著就像平常一樣啟動Claude Code：

```shell
claude
```

就這樣！現在你的Claude Code已經有全球搜尋能力和CP值超高的模型支援囉！🚀

## 想換個模型試試看？🎛️

預設會使用Qwen3-Coder模型，對大部分寫程式的工作來說已經很不錯了。但如果你想試試其他模型或是用自己的API，當然沒問題啊！

只要編輯 `~/.config/claude-code-sugar/config.json` 就可以了：

```json
{
  "baseURL": "你的OpenAI相容API網址",
  "apiKey": "你的API金鑰", 
  "modelMapping": {
    "claude-3-5-haiku-20241022": "處理簡單工作的模型",
    "claude-sonnet-4-20250514": "處理複雜工作的模型",
    "claude-opus-4-20250514": "處理重度工作的模型"
  },
  "searchApiKey": "你的搜尋API金鑰"
}
```

透過模型對應，你可以針對不同難度的工作指派不同的模型——既能確保品質，又能控制成本，是不是很貼心呢！💰