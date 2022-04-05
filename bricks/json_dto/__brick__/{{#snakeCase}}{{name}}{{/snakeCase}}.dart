import 'package:json_annotation/json_annotation.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}.g.dart';

@JsonSerializable()
class {{#pascalCase}}{{name}}{{/pascalCase}} {
  {{#pascalCase}}{{name}}{{/pascalCase}}();

  factory {{#pascalCase}}{{name}}{{/pascalCase}}.fromJson(Map<String, dynamic> json) =>
      _${{#pascalCase}}{{name}}{{/pascalCase}}FromJson(json);
  Map<String, dynamic> toJson() => _${{#pascalCase}}{{name}}{{/pascalCase}}ToJson(this);
}
