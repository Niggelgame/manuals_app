import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'manual.g.dart';

@JsonSerializable()
class Manual {
  @JsonKey(name: '_id')
  final String manualId;
  final String title;
  final String explanation;
  final bool private;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final String owner;
  final List<Step> steps;

  Manual(this.manualId, this.title, this.explanation, this.private, this.imageUrl, this.owner, this.steps);

  factory Manual.fromJson(Map<String, dynamic> json) =>
      _$ManualFromJson(json);
  Map<String, dynamic> toJson() => _$ManualToJson(this);
}

@JsonSerializable()
class CompactManual {
  @JsonKey(name: '_id')
  final String manualId;
  final String title;
  final String explanation;
  final bool private;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final String owner;

  CompactManual(this.manualId, this.title, this.explanation, this.private, this.imageUrl, this.owner);

  factory CompactManual.fromJson(Map<String, dynamic> json) =>
      _$CompactManualFromJson(json);
  Map<String, dynamic> toJson() => _$CompactManualToJson(this);
}
