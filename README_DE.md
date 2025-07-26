# Claude Code Sugar

[English](README_EN.md) | [中文](README.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | **Deutsch** | [Español](README_ES.md) | [Русский](README_RU.md)

**Durch Claude Code Sugar können Sie einige eingeschränkte Funktionen von Claude Code freischalten und die Anpassung an andere Modelle unterstützen.**

Die ursprüngliche Motivation für dieses Projekt entspringt einem praktischen Problem, das wir bei der Verwendung von Claude Code angetroffen haben: In Regionen außerhalb der Vereinigten Staaten kann die native **Web Search**-Funktionalität nicht ordnungsgemäß verwendet werden, was der akademischen Forschungsarbeit, die Web-Such-Unterstützung benötigt, Unannehmlichkeiten bereitet.

Im Prozess der Lösungssuche entdeckten wir zufällig, dass ein inländisches Produkt offene API-Schnittstellen bereitstellt. Nicht nur kann die Suchfunktionalität kostenlos genutzt werden, sondern es integriert auch mehrere große Sprachmodelle—von denen einige hervorragend im Code-Verständnis und der Verarbeitung langer Kontexte abschneiden. Dies ist zweifellos eine gute Nachricht für Claude Code-Benutzer, die eine bessere Kosteneffizienz wünschen.

Basierend auf dieser Entdeckung entwickelten wir das Claude Code Sugar-Projekt. Um alle Funktionen von Claude Code zu erhalten und kontinuierliche Updates zu gewährleisten, haben wir keinen Code von Claude Code modifiziert, sondern verwenden stattdessen eine leichtgewichtige Proxy-Schicht, um sich an diese API-Schnittstellen anzupassen und damit das Problem der Suchfunktionalitätsbeschränkung zu lösen.

Zusätzlich ist dieser Proxy auch mit OpenAI-Protokoll-Modellaufrufmethoden kompatibel.

Durch Claude Code Sugar können Sie weiterhin die mächtigen Fähigkeiten von Claude Code genießen und gleichzeitig flexiblere API-Aufrufoptionen erhalten.

**Dieses Projekt ist nur für akademische und Forschungsaustauschzwecke bestimmt**

## Schnellinstallation
Verwenden Sie das folgende Skript für eine schnelle Installation:
```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

Der Installationsprozess fordert Sie auf, einen Such-API-Schlüssel einzugeben. Gehen Sie zur [iFlow Open Platform](https://iflow.cn/?open=setting), um einen Schlüssel zu beantragen und einzugeben.

Beginnen Sie mit der kostengünstigen Nutzung von Claude Code:

```shell
claude
```

## Wie man das Modell ändert
Bei direkter Verwendung des Installationsskripts wird standardmäßig das Qwen3-Coder-Modell verwendet, und Sie können es direkt verwenden, ohne Parameter zu ändern.
Wenn Sie das Modell wechseln möchten, können Sie `~/.config/claude-code-sugar/config.json` bearbeiten, um Modellinformationen anzugeben, die dem OpenAI-Protokoll entsprechen.

Ein Referenzbeispiel für config.json:
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