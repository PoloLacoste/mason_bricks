<h1 align="center">
Mason bloc bricks
</h1>

<p align="center">
    <a href="https://github.com/PoloLacoste/mason_bricks/issues/new/choose">Report Bug</a>
    ·
    <a href="https://github.com/PoloLacoste/mason_bricks/issues/new/choose">Request Feature</a>
</p>

## 🚧 Requirements

- [Dart](https://dart.dev/)

## 🛠️ Installation Steps

Install [mason](https://pub.dev/packages/mason)
```sh
dart pub global activate mason
```

Install the bricks
```sh
mason i https://github.com/PoloLacoste/mason_bricks --path bricks/bloc_page
mason i https://github.com/PoloLacoste/mason_bricks --path bricks/cubit_page
mason i https://github.com/PoloLacoste/mason_bricks --path bricks/app
```

## 🧱 Usage

### 📄 Cubit page

```sh
mason make cubit_page -o ./output-path
```

Generated folder architecture (example with `home`) :

    .
    ├── home
    │   ├── cubit
    │   │   ├── home_cubit.dart
    │   │   └── home_state.dart
    │   ├── view
    │   │   ├── home_page.dart
    │   │   └── home_view.dart
    │   └── home.dart
    └── ...

### 📄 Bloc page

```sh
mason make bloc_page -o ./output-path
```

Generated folder architecture (example with `home`) :

    .
    ├── home
    │   ├── bloc
    │   │   ├── home_bloc.dart
    │   │   ├── home_event.dart
    │   │   └── home_state.dart
    │   ├── view
    │   │   ├── home_page.dart
    │   │   └── home_view.dart
    │   └── home.dart
    └── ...

### 📄 App

Simple clean architecture app, inspired by [very_good_cli](https://github.com/VeryGoodOpenSource/very_good_cli) and [resocoder](https://resocoder.com/2019/08/27/flutter-tdd-clean-architecture-course-1-explanation-project-structure/).

```sh
mason make app -o ./output-path --on-conflict overwrite
```

Generated folder architecture:

    .
    ├── lib
    │   ├── app
    │   │   ├── app_bloc_observer.dart
    │   │   ├── app.dart
    │   │   └── router.dart
    │   ├── core
    │   │   ├── constants
    │   │   ├── errors
    │   │   ├── services
    │   │   └── locator.dart
    │   ├── data
    |   |   ├── datasources
    |   |   ├── models
    |   │   └── repositories
    │   ├── domain
    |   |   ├── entities
    |   |   ├── repositories
    |   │   └── services
    │   ├── l10n
    │   │   ├── arb
    │   │   └── l10n.dart
    │   ├── presentation
    │   │   ├── pages
    │   │   └── widgets
    │   └── main.dart
    └── analysis_options.yaml
    └── l10n.yaml
    └── pubspec.yaml

### App addons (require [App](#-app))

Adding:
- [bot_toast](https://pub.dev/packages/bot_toast) : Customize messages (info, success, warning, error).
- [bitsdojo_window](https://pub.dev/packages/bitsdojo_window) : Customize flutter window to adapt to windows, linux and macOS
- [sizer](https://pub.dev/packages/sizer) : Responsive

## 🙇 Special Thanks

- [Felix Angelov ](https://github.com/felangel) for the amazing [mason](https://github.com/felangel/mason) cli.
