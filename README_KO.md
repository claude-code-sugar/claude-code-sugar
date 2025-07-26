# Claude Code Sugar

[English](README.md) | [中文](README_ZH.md) | [日本語](README_JA.md) | **한국어** | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

**Claude Code Sugar를 통해 Claude Code의 일부 제한된 기능을 해제하고 다른 모델에 대한 적응을 지원할 수 있습니다.**

이 프로젝트의 초기 동기는 Claude Code를 사용하면서 겪은 실질적인 문제에서 비롯됩니다: 미국 이외의 지역에서는 네이티브 **Web Search** 기능이 정상적으로 사용될 수 없어, 웹 검색 지원이 필요한 학술 연구 작업에 불편을 초래했습니다.

해결책을 찾는 과정에서, 우연히 국내의 한 제품이 개방형 API 인터페이스를 제공한다는 것을 발견했습니다. 검색 기능을 무료로 사용할 수 있을 뿐만 아니라, 여러 대형 언어 모델도 통합되어 있으며, 그 중 일부는 코드 이해와 긴 컨텍스트 처리에서 우수한 성능을 보입니다. 이는 더 나은 비용 효율성을 원하는 Claude Code 사용자들에게 의심할 여지없이 좋은 소식입니다.

이러한 발견을 바탕으로 Claude Code Sugar 프로젝트를 개발했습니다. Claude Code의 모든 기능을 보존하고 지속적인 업데이트를 유지하기 위해, Claude Code의 코드를 전혀 수정하지 않고, 경량 프록시 레이어를 사용하여 이러한 API 인터페이스에 적응함으로써 검색 기능의 제한 문제를 해결했습니다.

또한 이 프록시는 OpenAI 프로토콜 모델 호출 방식과도 호환됩니다.

Claude Code Sugar를 통해 Claude Code의 강력한 기능을 계속 누리면서 더 유연한 API 호출 옵션을 얻을 수 있습니다.

**본 프로젝트는 학술, 연구 교류 목적으로만 사용하시기 바랍니다**

## 빠른 설치
다음 스크립트를 사용하여 빠른 설치를 진행합니다:
```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

설치 과정에서 Search API Key 입력이 요구됩니다. [심류개방플랫폼](https://iflow.cn/?open=setting)에서 Key를 신청하여 입력하세요.

저비용으로 Claude Code 사용 시작:

```shell
claude
```

## 모델 변경 방법
설치 스크립트를 직접 사용하면 기본적으로 Qwen3-Coder 모델을 사용하며, 어떤 매개변수도 수정하지 않고 바로 사용할 수 있습니다.
모델을 변경하고 싶다면 `~/.config/claude-code-sugar/config.json`을 편집하여 OpenAI 프로토콜에 부합하는 모델 정보를 지정할 수 있습니다.

config.json 참고 예시:
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