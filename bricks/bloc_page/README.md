# 🧱 Bloc page

Generate a new Bloc page using the [bloc state management library][1].

## 🚧 Requirements

Make sure you have the [`bloc`][1] library inside your `pubspec.yaml` file.

## Usage 🚀

```sh
mason make bloc_page -o ./output-path --name page_name
```

## Variables ✨

| Variable | Description                | Required   | Type     |
| -------- | -------------------------- | ---------- | -------- |
| `name`   | The name of the bloc page  | `Yes`      | `string` |

## Output 📦

Generated folder architecture with page name `home`:

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

[1]: https://github.com/felangel/bloc