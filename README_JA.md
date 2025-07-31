# Claude Code Sugar 🍯

[English](README.md) | [中文](README_ZH.md) | [繁體中文](README_TW.md) | **日本語** | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

> **Claude Codeを世界中で甘く快適に！🌍**

## なぜこのプロジェクトを作ったのか

正直に申し上げますと、私たちはClaude Codeが大好きなのですが、一つ困った問題がありました。アメリカ以外の地域では、Web検索機能が正常に動作しないのです。研究や調べ物をする際に、これは本当に不便でした。

そこで解決策を探していたところ、素晴らしい発見をしました！国内のあるプラットフォームが無料の検索APIを提供しており、さらに複数の優秀な大規模言語モデルも統合されているのです。その中には、コード理解や長文処理において非常に優れた性能を示すモデルもあります。

これはClaude Codeユーザーにとって、まさに朗報ですね！

## Claude Code Sugarができること

Claude Codeのソースコードを変更する代わりに（メンテナンスが大変になってしまいますから）、軽量なプロキシ層を作成しました。これは通訳のような役割を果たし、Claude Codeとこれらの優秀なAPIとの橋渡しをします。

これにより、以下のメリットを得られます：
- ✅ Claude Codeの全ての強力な機能
- ✅ 世界中で利用可能なWeb検索
- ✅ コストパフォーマンスに優れた高品質モデル
- ✅ OpenAIプロトコル互換性（標準は大切です！）
- ✅ Claude Codeの変更不要（アップデートも安心）

**注意：本プロジェクトは学術・研究交流目的でのみご利用ください。**

## 30秒で始められます ⚡

アップグレードされたClaude Code体験の準備はできましたか？こちらのコマンドを実行するだけです：

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

インストール中に検索API キーの入力が求められますので、[心流開放平台](https://docs.iflow.cn/en/docs/)で無料のキーを取得してご入力ください。とても簡単です！🔑

その後、いつものようにClaude Codeを起動してください：

```shell
claude
```

これで完了です！Claude Codeがグローバル検索機能とコストパフォーマンスに優れたモデルサポートを手に入れました！🚀

## 別のモデルをお試しになりたいですか？🎛️

デフォルトではQwen3-Coderモデルを使用しており、ほとんどのプログラミングタスクには十分な性能を発揮します。しかし、他のモデルを試したり、独自のAPIを使用したい場合も、もちろん可能です！

`~/.config/claude-code-sugar/config.json`を編集するだけです：

```json
{
  "baseURL": "あなたのOpenAI互換APIのURL",
  "apiKey": "あなたのAPIキー", 
  "modelMapping": {
    "claude-3-5-haiku-20241022": "簡単なタスク用のモデル",
    "claude-sonnet-4-20250514": "複雑なタスク用のモデル",
    "claude-opus-4-20250514": "重いタスク用のモデル"
  },
  "searchApiKey": "あなたの検索APIキー"
}
```

モデルマッピングにより、タスクの複雑さに応じて異なるモデルを割り当てることができます。パフォーマンスとコストの両方を最適化できる、とても便利な機能ですね！💰