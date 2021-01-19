// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Step _$StepFromJson(Map<String, dynamic> json) {
  return Step(
    json['title'] as String,
    json['explanation'] as String,
    json['image_url'] as String,
  );
}

Map<String, dynamic> _$StepToJson(Step instance) => <String, dynamic>{
      'title': instance.title,
      'explanation': instance.explanation,
      'image_url': instance.imageUrl,
    };
