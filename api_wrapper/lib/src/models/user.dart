import 'package:json_annotation/json_annotation.dart';

import 'manual.dart';
import 'models.dart';

part 'user.g.dart';

@JsonSerializable()
class FullUser {
  @JsonKey(name: '_id')
  final String firebaseUserId;
  final List<Manual> ownManuals;

  FullUser(this.firebaseUserId, this.ownManuals);

  factory FullUser.fromJson(Map<String, dynamic> json) =>
      _$FullUserFromJson(json);
  Map<String, dynamic> toJson() => _$FullUserToJson(this);
}

@JsonSerializable()
class CompactUser {
  @JsonKey(name: '_id')
  final String firebaseUserId;
  final List<CompactManual> ownManuals;

  CompactUser(this.firebaseUserId, this.ownManuals);

  factory CompactUser.fromJson(Map<String, dynamic> json) =>
      _$CompactUserFromJson(json);
  Map<String, dynamic> toJson() => _$CompactUserToJson(this);
}
