import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'manual.g.dart';

@JsonSerializable()
class Manual extends Equatable {
  @JsonKey(name: '_id')
  final String manualId;
  final String title;
  final String explanation;
  final bool private;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final String owner;
  final List<Step> steps;

  Manual(this.manualId, this.title, this.explanation, this.private,
      this.imageUrl, this.owner, this.steps);

  factory Manual.fromJson(Map<String, dynamic> json) => _$ManualFromJson(json);

  Map<String, dynamic> toJson() => _$ManualToJson(this);

  @override
  List<Object> get props => [
        manualId,
        title,
        explanation,
        private,
        imageUrl,
        owner,
        steps,
      ];

  @override
  bool get stringify => true;
}

@JsonSerializable()
class CreationManual extends Equatable {
  final String title;
  final String explanation;
  final bool private;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final List<Step> steps;

  CreationManual(
      this.title, this.explanation, this.private, this.imageUrl, this.steps);

  factory CreationManual.fromJson(Map<String, dynamic> json) =>
      _$CreationManualFromJson(json);

  Map<String, dynamic> toJson() => _$CreationManualToJson(this);

  @override
  List<Object> get props => [
        title,
        explanation,
        private,
        imageUrl,
        steps,
      ];

  @override
  bool get stringify => true;
}

@JsonSerializable()
class CompactManual extends Equatable {
  @JsonKey(name: '_id')
  final String manualId;
  final String title;
  final String explanation;
  final bool private;
  @JsonKey(name: 'image_url')
  final String imageUrl;
  final String owner;

  CompactManual(this.manualId, this.title, this.explanation, this.private,
      this.imageUrl, this.owner);

  factory CompactManual.fromJson(Map<String, dynamic> json) =>
      _$CompactManualFromJson(json);

  Map<String, dynamic> toJson() => _$CompactManualToJson(this);

  @override
  List<Object> get props => [
        manualId,
        title,
        explanation,
        private,
        imageUrl,
        owner,
      ];

  @override
  bool get stringify => true;
}

@JsonSerializable()
class ManualsSnippet extends Equatable {
  final List<Manual> manuals;

  ManualsSnippet(this.manuals);

  factory ManualsSnippet.fromJson(Map<String, dynamic> json) =>
      _$ManualsSnippetFromJson(json);

  Map<String, dynamic> toJson() => _$ManualsSnippetToJson(this);

  @override
  List<Object> get props => [manuals];

  @override
  bool get stringify => true;
}
