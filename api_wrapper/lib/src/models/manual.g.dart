// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manual.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Manual _$ManualFromJson(Map<String, dynamic> json) {
  return Manual(
    json['_id'] as String,
    json['title'] as String,
    json['explanation'] as String,
    json['private'] as bool,
    json['image_url'] as String,
    json['owner'] as String,
    (json['steps'] as List)
        ?.map(
            (e) => e == null ? null : Step.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ManualToJson(Manual instance) => <String, dynamic>{
      '_id': instance.manualId,
      'title': instance.title,
      'explanation': instance.explanation,
      'private': instance.private,
      'image_url': instance.imageUrl,
      'owner': instance.owner,
      'steps': instance.steps,
    };

CreationManual _$CreationManualFromJson(Map<String, dynamic> json) {
  return CreationManual(
    json['title'] as String,
    json['explanation'] as String,
    json['private'] as bool,
    json['image_url'] as String,
    (json['steps'] as List)
        ?.map(
            (e) => e == null ? null : Step.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CreationManualToJson(CreationManual instance) =>
    <String, dynamic>{
      'title': instance.title,
      'explanation': instance.explanation,
      'private': instance.private,
      'image_url': instance.imageUrl,
      'steps': instance.steps,
    };

CompactManual _$CompactManualFromJson(Map<String, dynamic> json) {
  return CompactManual(
    json['_id'] as String,
    json['title'] as String,
    json['explanation'] as String,
    json['private'] as bool,
    json['image_url'] as String,
    json['owner'] as String,
  );
}

Map<String, dynamic> _$CompactManualToJson(CompactManual instance) =>
    <String, dynamic>{
      '_id': instance.manualId,
      'title': instance.title,
      'explanation': instance.explanation,
      'private': instance.private,
      'image_url': instance.imageUrl,
      'owner': instance.owner,
    };

ManualsSnippet _$ManualsSnippetFromJson(Map<String, dynamic> json) {
  return ManualsSnippet(
    (json['manuals'] as List)
        ?.map((e) =>
            e == null ? null : Manual.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ManualsSnippetToJson(ManualsSnippet instance) =>
    <String, dynamic>{
      'manuals': instance.manuals,
    };
