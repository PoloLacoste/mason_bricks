import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../{{#snakeCase}}{{name}}{{/snakeCase}}.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}View extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}View({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<{{#pascalCase}}{{name}}{{/pascalCase}}Bloc>();
    return Container(
      child: null,
    );
  }
}
