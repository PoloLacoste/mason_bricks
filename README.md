<h1 align="center">
Mason bricks
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
mason i https://github.com/PoloLacoste/mason_bricks
```

## 🧱 Usage

### Cubit page

```sh
mason make cubit_page -o ./your-path
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

### Bloc page

```sh
mason make bloc_page -o ./your-path
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
