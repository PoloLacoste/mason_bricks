part of '{{#snakeCase}}{{name}}{{/snakeCase}}_bloc.dart';

abstract class {{#pascalCase}}{{name}}{{/pascalCase}}State extends Equatable {
  const {{#pascalCase}}{{name}}{{/pascalCase}}State();

  @override
  List<Object> get props => [];
}

class {{#pascalCase}}{{name}}{{/pascalCase}}Initial extends {{#pascalCase}}{{name}}{{/pascalCase}}State {}
