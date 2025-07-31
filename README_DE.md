# Claude Code Sugar 🍯

[English](README.md) | [中文](README_ZH.md) | [繁體中文](README_TW.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | **Deutsch** | [Español](README_ES.md) | [Русский](README_RU.md)

> **Claude Code weltweit süß und zugänglich machen! 🌍**

## Warum haben wir dieses Projekt erstellt?

Seien wir ehrlich: Wir lieben Claude Code! Aber wir sind auf ein frustrierendes Problem gestoßen. Wenn Sie nicht in den USA sind, funktioniert die Web-Suchfunktion einfach nicht. Und wenn Sie forschen oder beim Programmieren Informationen nachschlagen müssen, ist das wirklich ärgerlich.

Also haben wir uns auf die Suche nach Lösungen gemacht. Und raten Sie mal? Wir haben etwas Großartiges entdeckt! Es gibt APIs, die nicht nur kostenlose Suchfunktionen bieten, sondern auch Zugang zu beeindruckenden Sprachmodellen. Einige dieser Modelle sind tatsächlich *besser* im Code-Verständnis und bei der Verarbeitung langer Kontexte, als man erwarten würde!

Das brachte uns zum Nachdenken: "Was wäre, wenn wir Claude Code-Nutzern das Beste aus beiden Welten bieten könnten?"

## Was Claude Code Sugar leistet

Anstatt Claude Code selbst zu hacken (was ein Wartungsalptraum wäre), haben wir einen leichtgewichtigen Proxy erstellt, der zwischen Claude Code und diesen APIs sitzt. Stellen Sie es sich wie einen Übersetzer vor, der sowohl die Sprache von Claude Code als auch die dieser mächtigen APIs spricht.

Das Ergebnis? Sie erhalten:
- ✅ Alle erstaunlichen Funktionen von Claude Code
- ✅ Web-Suche, die wirklich global funktioniert
- ✅ Zugang zu kostengünstigen, leistungsstarken Modellen
- ✅ OpenAI-Protokoll-Kompatibilität (Standards sind wichtig!)
- ✅ Keine Änderungen an Claude Code (Updates funktionieren einfach)

**Hinweis: Dieses Projekt ist für akademische und Forschungszwecke bestimmt.**

## In 30 Sekunden startklar ⚡

Bereit, Ihre Claude Code-Erfahrung zu verbessern? Führen Sie einfach das hier aus:

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

Der Installer fragt nach einem Such-API-Schlüssel - gehen Sie einfach zur [iFlow Open Platform](https://docs.iflow.cn/en/docs/), holen Sie sich Ihren kostenlosen Schlüssel und fügen Sie ihn ein. Kinderleicht! 🔑

Dann starten Sie Claude Code wie gewohnt:

```shell
claude
```

Das war's! Sie nutzen jetzt Claude Code mit globalen Suchfähigkeiten und Zugang zu kostengünstigen Modellen. 🚀

## Lust auf andere Modelle? 🎛️

Standardmäßig verwendet Claude Code Sugar das Qwen3-Coder-Modell, das für die meisten Programmieraufgaben ziemlich solide ist. Aber vielleicht möchten Sie mit verschiedenen Modellen experimentieren oder Ihre eigenen API-Endpunkte verwenden!

Kein Problem! Bearbeiten Sie einfach `~/.config/claude-code-sugar/config.json` und passen Sie nach Belieben an:

```json
{
  "baseURL": "Ihre OpenAI-Basis-URL",
  "apiKey": "Ihr API-Schlüssel", 
  "modelMapping": {
    "claude-3-5-haiku-20241022": "Ihr Modell für kleine Aufgaben",
    "claude-sonnet-4-20250514": "Ihr Modell für große Aufgaben",
    "claude-opus-4-20250514": "Ihr Modell für schwere Aufgaben"
  },
  "searchApiKey": "Ihr Such-API-Schlüssel"
}
```

Das Modell-Mapping ermöglicht es Ihnen, verschiedene Modelle für verschiedene Komplexitätsstufen zuzuweisen - ziemlich clever zur Optimierung von Leistung und Kosten! 💰