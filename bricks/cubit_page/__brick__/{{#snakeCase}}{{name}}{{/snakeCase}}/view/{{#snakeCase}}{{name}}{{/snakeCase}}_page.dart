import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../{{#snakeCase}}{{name}}{{/snakeCase}}.dart';
import '{{#snakeCase}}{{name}}{{/snakeCase}}_view.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Page extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => {{#pascalCase}}{{name}}{{/pascalCase}}Cubit(
        context: context,
      ),
      child: const {{#pascalCase}}{{name}}{{/pascalCase}}View(),
    );
  }
}
