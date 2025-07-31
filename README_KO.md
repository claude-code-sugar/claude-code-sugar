# Claude Code Sugar 🍯

[English](README.md) | [中文](README_ZH.md) | [繁體中文](README_TW.md) | [日本語](README_JA.md) | **한국어** | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

> **Claude Code를 전 세계 어디서나 달콤하게! 🌍**

## 왜 이 프로젝트를 만들었나요?

솔직히 말하면, 저희는 Claude Code를 정말 좋아해요! 하지만 짜증나는 문제가 하나 있었어요. 미국이 아닌 지역에서는 웹 검색 기능이 작동하지 않는다는 거예요. 연구하거나 자료를 찾을 때 정말 불편했죠.

그래서 해결책을 찾아다니다가 대박을 발견했어요! 국내 플랫폼 중에 무료 검색 API를 제공하는 곳이 있더라고요. 게다가 여러 개의 훌륭한 대형 언어 모델들도 통합되어 있어서, 그 중 일부는 코드 이해와 긴 텍스트 처리에서 정말 뛰어난 성능을 보여줘요!

이거야말로 Claude Code 사용자들이 원하던 바로 그거 아닌가요?

## Claude Code Sugar가 할 수 있는 일

Claude Code의 소스 코드를 건드리는 대신 (유지보수가 악몽이 될 테니까요), 가벼운 프록시 레이어를 만들었어요. 이게 마치 통역사처럼 Claude Code와 이 훌륭한 API들 사이의 다리 역할을 해줍니다.

결과적으로 이런 것들을 얻을 수 있어요:
- ✅ Claude Code의 모든 강력한 기능
- ✅ 전 세계에서 작동하는 웹 검색
- ✅ 가성비 좋은 고성능 모델들
- ✅ OpenAI 프로토콜 호환성 (표준이 중요하죠!)
- ✅ Claude Code 수정 불필요 (업데이트 걱정 없음)

**참고: 이 프로젝트는 학술 및 연구 목적으로만 사용해주세요.**

## 30초만에 시작하기 ⚡

업그레이드된 Claude Code 경험을 준비됐나요? 이 명령어 하나면 끝이에요:

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/claude-code-sugar/claude-code-sugar/refs/heads/main/install.sh)"
```

설치 중에 검색 API 키를 입력하라고 할 텐데, [심류개방플랫폼](https://docs.iflow.cn/en/docs/)에서 무료로 받아서 입력하면 돼요. 완전 쉬워요! 🔑

그다음에는 평소처럼 Claude Code를 실행하면 됩니다:

```shell
claude
```

끝! 이제 Claude Code가 글로벌 검색 기능과 가성비 좋은 모델 지원을 갖게 되었어요! 🚀

## 다른 모델 써보고 싶어요? 🎛️

기본적으로는 Qwen3-Coder 모델을 사용하는데, 대부분의 코딩 작업에는 충분히 좋아요. 하지만 다른 모델을 시도해보거나 자신만의 API를 사용하고 싶다면? 전혀 문제없어요!

`~/.config/claude-code-sugar/config.json` 파일만 수정하면 돼요:

```json
{
  "baseURL": "당신의 OpenAI 호환 API URL",
  "apiKey": "당신의 API 키", 
  "modelMapping": {
    "claude-3-5-haiku-20241022": "간단한 작업용 모델",
    "claude-sonnet-4-20250514": "복잡한 작업용 모델",
    "claude-opus-4-20250514": "무거운 작업용 모델"
  },
  "searchApiKey": "당신의 검색 API 키"
}
```

모델 매핑을 통해 작업의 복잡도에 따라 다른 모델을 할당할 수 있어요 - 성능도 보장하고 비용도 절약하는 똑똑한 방법이죠! 💰