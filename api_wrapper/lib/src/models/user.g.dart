// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FullUser _$FullUserFromJson(Map<String, dynamic> json) {
  return FullUser(
    json['_id'] as String,
    (json['ownManuals'] as List)
        ?.map((e) =>
            e == null ? null : Manual.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FullUserToJson(FullUser instance) => <String, dynamic>{
      '_id': instance.firebaseUserId,
      'ownManuals': instance.ownManuals,
    };

CompactUser _$CompactUserFromJson(Map<String, dynamic> json) {
  return CompactUser(
    json['_id'] as String,
    (json['ownManuals'] as List)
        ?.map((e) => e == null
            ? null
            : CompactManual.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CompactUserToJson(CompactUser instance) =>
    <String, dynamic>{
      '_id': instance.firebaseUserId,
      'ownManuals': instance.ownManuals,
    };
