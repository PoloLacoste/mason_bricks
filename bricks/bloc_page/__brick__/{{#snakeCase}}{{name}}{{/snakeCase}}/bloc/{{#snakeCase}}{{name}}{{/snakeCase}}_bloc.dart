import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_state.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Bloc extends Bloc<{{#pascalCase}}{{name}}{{/pascalCase}}Event, {{#pascalCase}}{{name}}{{/pascalCase}}State> {
  {{#pascalCase}}{{name}}{{/pascalCase}}Bloc({
    required this.context,
  }) : super({{#pascalCase}}{{name}}{{/pascalCase}}Initial());

  final BuildContext context;

  @override
  Stream<{{#pascalCase}}{{name}}{{/pascalCase}}State> mapEventToState(
    {{#pascalCase}}{{name}}{{/pascalCase}}Event event,
  ) async* {
    
  }
}
