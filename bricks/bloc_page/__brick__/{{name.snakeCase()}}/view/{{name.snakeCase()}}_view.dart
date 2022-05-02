import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}View extends StatelessWidget {
  const {{name.pascalCase()}}View({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<{{name.pascalCase()}}Bloc>();
    return Container(
      child: null,
    );
  }
}
