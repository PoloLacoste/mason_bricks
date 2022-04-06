import 'package:json_annotation/json_annotation.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_dto.g.dart';

@JsonSerializable()
class {{#pascalCase}}{{name}}{{/pascalCase}}Dto {
  {{#pascalCase}}{{name}}{{/pascalCase}}Dto();

  factory {{#pascalCase}}{{name}}{{/pascalCase}}Dto.fromJson(Map<String, dynamic> json) =>
      _${{#pascalCase}}{{name}}{{/pascalCase}}DtoFromJson(json);
  Map<String, dynamic> toJson() => _${{#pascalCase}}{{name}}{{/pascalCase}}DtoToJson(this);
}
