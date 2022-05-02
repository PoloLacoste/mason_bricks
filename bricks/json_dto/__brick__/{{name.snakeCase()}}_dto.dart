import 'package:json_annotation/json_annotation.dart';

part '{{name.snakeCase()}}_dto.g.dart';

@JsonSerializable()
class {{name.pascalCase()}}Dto {
  {{name.pascalCase()}}Dto();

  factory {{name.pascalCase()}}Dto.fromJson(Map<String, dynamic> json) =>
      _${{name.pascalCase()}}DtoFromJson(json);
  Map<String, dynamic> toJson() => _${{name.pascalCase()}}DtoToJson(this);
}
