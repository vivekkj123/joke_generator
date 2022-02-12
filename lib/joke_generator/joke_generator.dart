import 'package:json_annotation/json_annotation.dart';

import 'value.dart';

part 'joke_generator.g.dart';

@JsonSerializable()
class JokeGenerator {
  String? type;
  Value? value;

  JokeGenerator({this.type, this.value});

  factory JokeGenerator.fromJson(Map<String, dynamic> json) {
    return _$JokeGeneratorFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JokeGeneratorToJson(this);
}
