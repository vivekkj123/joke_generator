// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_generator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokeGenerator _$JokeGeneratorFromJson(Map<String, dynamic> json) =>
    JokeGenerator(
      type: json['type'] as String?,
      value: json['value'] == null
          ? null
          : Value.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JokeGeneratorToJson(JokeGenerator instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
