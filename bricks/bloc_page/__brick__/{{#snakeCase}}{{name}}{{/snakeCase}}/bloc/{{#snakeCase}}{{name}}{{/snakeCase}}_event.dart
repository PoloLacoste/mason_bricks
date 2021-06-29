part of '{{#snakeCase}}{{name}}{{/snakeCase}}_bloc.dart';

abstract class {{#pascalCase}}{{name}}{{/pascalCase}}Event extends Equatable {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Event();

  @override
  List<Object> get props => [];
}
