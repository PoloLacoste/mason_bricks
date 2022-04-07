# 🧱 JSON Dto

A simple JSON Data Object using `json_annotation` and `json_serializable` packages.

## 🚧 Requirements

Make sure you have the [`bloc`](https://github.com/felangel/bloc) library inside your `pubspec.yaml` file.

## Usage 🚀

```sh
mason make json_dto -o ./output-path --name dto_name
```

## Variables ✨

| Variable | Description                | Required   | Type     |
| -------- | -------------------------- | ---------- | -------- |
| `name`   | The name of the JSON Dto   | `Yes`      | `string` |

## Output 📦

Generated file example with the name `Example`:

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