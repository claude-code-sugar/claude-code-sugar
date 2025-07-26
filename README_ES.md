# Claude Code Sugar

[English](README.md) | [中文](README_ZH.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | **Español** | [Русский](README_RU.md)

**A través de Claude Code Sugar, puedes desbloquear algunas funciones restringidas de Claude Code y soportar la adaptación a otros modelos.**

La motivación inicial de este proyecto surge de un problema práctico que encontramos al usar Claude Code: en regiones fuera de Estados Unidos, la funcionalidad nativa de **búsqueda web** no puede usarse correctamente, lo que trae inconvenientes al trabajo de investigación académica que requiere soporte de búsqueda web.

En el proceso de buscar soluciones, accidentalmente descubrimos que un producto doméstico proporciona interfaces API abiertas. No solo la funcionalidad de búsqueda puede usarse gratuitamente, sino que también integra múltiples modelos de lenguaje de gran escala—algunos de los cuales se destacan en la comprensión de código y el procesamiento de contexto largo. Esto es sin duda una buena noticia para los usuarios de Claude Code que buscan mejor relación costo-efectividad.

Basado en este descubrimiento, desarrollamos el proyecto Claude Code Sugar. Para preservar toda la funcionalidad de Claude Code y mantener actualizaciones continuas, no hemos modificado ningún código de Claude Code, sino que usamos una capa proxy ligera para adaptarse a estas interfaces API, resolviendo así el problema de limitación de la funcionalidad de búsqueda.

Además, este proxy también es compatible con los métodos de llamada de modelos del protocolo OpenAI.

A través de Claude Code Sugar, puedes continuar disfrutando de las poderosas capacidades de Claude Code mientras obtienes opciones de llamada API más flexibles.

**Este proyecto es solo para fines académicos y de intercambio de investigación**

## Instalación rápida
Usa el siguiente script para una instalación rápida:
```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

El proceso de instalación te pedirá que ingreses una clave API de búsqueda. Ve a la [plataforma abierta iFlow](https://iflow.cn/?open=setting) para solicitar una clave e ingresarla.

Comienza a usar Claude Code a bajo costo:

```shell
claude
```

## Cómo modificar el modelo
Usar directamente el script de instalación utilizará por defecto el modelo Qwen3-Coder, y puedes usarlo directamente sin modificar ningún parámetro.
Si quieres cambiar el modelo, puedes editar `~/.config/claude-code-sugar/config.json` para especificar información del modelo que cumpla con el protocolo OpenAI.

Un ejemplo de referencia de config.json:
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