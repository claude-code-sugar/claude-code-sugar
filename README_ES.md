# Claude Code Sugar 🍯

[English](README.md) | [中文](README_ZH.md) | [繁體中文](README_TW.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | **Español** | [Русский](README_RU.md)

> **¡Hagamos que Claude Code sea dulcemente accesible en todo el mundo! 🌍**

## ¿Por qué creamos este proyecto?

Seamos honestos: ¡nos encanta Claude Code! Pero nos topamos con un problema súper frustrante. Si no estás en Estados Unidos, la función de búsqueda web simplemente no funciona. Y cuando estás investigando o necesitas buscar información mientras programas, eso es realmente molesto.

Así que nos pusimos a buscar soluciones. ¿Y adivina qué? ¡Hicimos un descubrimiento increíble! Hay APIs que no solo ofrecen capacidades de búsqueda gratuitas, sino también acceso a modelos de lenguaje impresionantes. ¡Algunos de estos modelos son en realidad *mejores* para entender código y manejar contextos largos de lo que podrías esperar!

Eso nos hizo pensar: "¿Qué tal si pudiéramos darles a los usuarios de Claude Code lo mejor de ambos mundos?"

## Lo que hace Claude Code Sugar

En lugar de hackear Claude Code directamente (lo cual sería una pesadilla de mantenimiento), construimos un proxy ligero que se sitúa entre Claude Code y estas APIs. Piénsalo como un traductor que habla tanto el idioma de Claude Code como el de estas APIs poderosas.

¿El resultado? Obtienes:
- ✅ Todas las características increíbles de Claude Code
- ✅ Búsqueda web que realmente funciona globalmente
- ✅ Acceso a modelos económicos y de alto rendimiento
- ✅ Compatibilidad con el protocolo OpenAI (¡los estándares importan!)
- ✅ Sin modificaciones a Claude Code (las actualizaciones simplemente funcionan)

**Nota: Este proyecto está destinado a fines académicos y de investigación.**

## Listo en 30 segundos ⚡

¿Preparado para potenciar tu experiencia con Claude Code? Solo ejecuta esto:

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

El instalador te pedirá una clave API de búsqueda - simplemente ve a la [plataforma abierta iFlow](https://docs.iflow.cn/en/docs/), consigue tu clave gratuita, y pégala. ¡Pan comido! 🔑

Luego inicia Claude Code como lo harías normalmente:

```shell
claude
```

¡Y listo! Ahora estás usando Claude Code con poderes de búsqueda globales y acceso a modelos económicos. 🚀

## ¿Quieres probar diferentes modelos? 🎛️

Por defecto, Claude Code Sugar usa el modelo Qwen3-Coder, que es bastante sólido para la mayoría de tareas de programación. ¡Pero tal vez quieras experimentar con diferentes modelos o usar tus propios endpoints de API!

¡No hay problema! Simplemente edita `~/.config/claude-code-sugar/config.json` y personaliza a tu gusto:

```json
{
  "baseURL": "tu URL base de OpenAI",
  "apiKey": "tu clave API", 
  "modelMapping": {
    "claude-3-5-haiku-20241022": "tu modelo para tareas pequeñas",
    "claude-3-7-sonnet-20250219": "tu modelo para tareas medianas", 
    "claude-sonnet-4-20250514": "tu modelo para tareas grandes",
    "claude-opus-4-20250514": "tu modelo para tareas pesadas"
  },
  "searchApiKey": "tu clave API de búsqueda"
}
```

El mapeo de modelos te permite asignar diferentes modelos a diferentes niveles de complejidad - ¡bastante inteligente para optimizar tanto el rendimiento como los costos! 💰