import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../{{name.snakeCase()}}.dart';
import '{{name.snakeCase()}}_view.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{name.pascalCase()}}Bloc(),
      child: const {{name.pascalCase()}}View(),
    );
  }
}
