# Claude Code Sugar

[English](README.md) | [中文](README_ZH.md) | **日本語** | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

**Claude Code Sugarを通じて、Claude Codeの一部の制限機能を解除し、他のモデルへの適応をサポートできます。**

このプロジェクトの当初の動機は、Claude Codeを使用する際に遭遇した実際的な問題に由来します：アメリカ以外の地域では、ネイティブの**Web Search**機能が正常に使用できず、Web検索サポートが必要な学術研究作業に不便をもたらしていました。

解決策を模索する過程で、偶然にも国内のある製品がオープンなAPIインターフェースを提供していることを発見しました。検索機能が無料で使用できるだけでなく、複数の大規模言語モデルも統合されており、その中にはコード理解と長いコンテキスト処理において優秀な性能を示すモデルもあります。これは、より良いコストパフォーマンスを求めるClaude Codeユーザーにとって、間違いなく良いニュースです。

この発見に基づいて、私たちはClaude Code Sugarプロジェクトを開発しました。Claude Codeのすべての機能を保持し、継続的な更新を維持するために、Claude Codeのコードを一切変更することなく、軽量なプロキシ層を使用してこれらのAPIインターフェースに適応し、検索機能の制限問題を解決しました。

さらに、このプロキシはOpenAIプロトコルのモデル呼び出し方式とも互換性があります。

Claude Code Sugarを通じて、Claude Codeの強力な機能を引き続き享受しながら、より柔軟なAPI呼び出しオプションを得ることができます。

**本プロジェクトは学術・研究交流目的でのみ使用してください**

## クイックインストール
以下のスクリプトを使用してクイックインストールを行います：
```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

インストール過程でSearch API Keyの入力が求められます。[心流開放平台](https://iflow.cn/?open=setting)でKeyを申請して入力してください。

低コストでClaude Codeの使用を開始：

```shell
claude
```

## モデルの変更方法
インストールスクリプトを直接使用すると、デフォルトでQwen3-Coderモデルが使用され、パラメータを変更することなく直接使用できます。
モデルを変更したい場合は、`~/.config/claude-code-sugar/config.json`を編集してOpenAIプロトコルに準拠したモデル情報を指定できます。

config.jsonの参考例：
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