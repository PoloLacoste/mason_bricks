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

## Example

### home_page.dart

```dart
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../home.dart';
import 'home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        context: context,
      ),
      child: const HomeView(),
    );
  }
}
```

### home_view.dart

```dart
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../home.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return Container(
      child: null,
    );
  }
}
```

## 🙇 Special Thanks

- [Felix Angelov ](https://github.com/felangel) for the amazing [mason](https://github.com/felangel/mason) cli.
