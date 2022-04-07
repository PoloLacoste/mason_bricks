# 🧱 JSON Dto

A simple JSON Data Object using `json_annotation` and `json_serializable` packages.

```sh
mason make json_dto -o ./output-path
```

Generated file example with the name `ExampleDto`:

```dart
import 'package:json_annotation/json_annotation.dart';

part 'example_dto.g.dart';

@JsonSerializable()
class ExampleDto {
  ExampleDto();

  factory ExampleDto.fromJson(Map<String, dynamic> json) =>
      _$ExampleDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleDtoToJson(this);
}
```

After that you will need to generate the `fromJson` and `toJson` methods of the model using the command below.

```sh
flutter pub run build_runner build
```