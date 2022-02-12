import 'package:json_annotation/json_annotation.dart';

part 'value.g.dart';

@JsonSerializable()
class Value {
  int? id;
  String? joke;
  List<String>? categories;

  Value({this.id, this.joke, this.categories});

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);

  Map<String, dynamic> toJson() => _$ValueToJson(this);
}
