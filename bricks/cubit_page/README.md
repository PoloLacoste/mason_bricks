# 🧱 Cubit page

Generate a new Cubit page using the [bloc state management library][1].

## 🚧 Requirements

Make sure you have the [`bloc`][1] library inside your `pubspec.yaml` file.

## Usage 🚀

```sh
mason make cubit_page -o ./output-path --name page_name
```

## Variables ✨

| Variable | Description                | Required   | Type     |
| -------- | -------------------------- | ---------- | -------- |
| `name`   | The name of the cubit page | `Yes`      | `string` |

## Output 📦

Generated folder architecture with name `home`:

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

[1]: https://github.com/felangel/bloc