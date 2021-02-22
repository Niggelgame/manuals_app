import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'step.g.dart';

@JsonSerializable()
class Step extends Equatable {
  final String title;
  final String explanation;
  @JsonKey(name: 'image_url')
  final String imageUrl;

  const Step(this.title, this.explanation, this.imageUrl);

  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);

  Map<String, dynamic> toJson() => _$StepToJson(this);

  @override
  List<Object> get props => [
        title,
        explanation,
        imageUrl,
      ];

  @override
  bool get stringify => true;
}
