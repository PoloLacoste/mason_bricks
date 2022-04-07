# 🧱 App

Simple clean architecture app, inspired by [very_good_cli](https://github.com/VeryGoodOpenSource/very_good_cli) and [resocoder](https://resocoder.com/2019/08/27/flutter-tdd-clean-architecture-course-1-explanation-project-structure/).

```sh
mason make app -o ./output-path --on-conflict overwrite --name app_name
```

## Variables ✨

| Variable | Description                      | Required | Type     |
|----------|----------------------------------|----------|----------|
| `name`   | The name of the application name | `Yes`    | `string` |

## Output 📦

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

After that you will need to generate the routes of the package `auto_route`.

```sh
flutter pub run build_runner build
```