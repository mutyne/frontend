# mutyne

```
A new Flutter project. Routine apps for the environment.
```

## Supported Devices

<a href="https://github.com/mutyne/frontend">
  <img src="https://img.shields.io/badge/IOS-181818?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Android-181818?style=for-the-badge" />
</a>

## Folder structure and description

```
📦assets
📦lib
 ┣ 📂common
 ┃ ┗ 📂widgets
 ┣ 📂constants
 ┣ 📂features
 ┃ ┣ 📂authentication
 ┃ ┗ 📂routine
 ┣ main.dart
 ┗ routes.dart
```

- `assets` : 정적 파일 모음
- `common/widgets` : 전역 공통 위젯 관리
- `constants` : 정적 데이터 모음
- `features` : 기능 단위 폴더 모음
  - `authentication`: 계정 기능
  - `routine`: 루틴 기능
- `main.dart` : theme, runApp 관리
- `routes.dart` : route 관리
