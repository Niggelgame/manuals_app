import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'manual.dart';
import 'models.dart';

part 'user.g.dart';

@JsonSerializable()
class FullUser extends Equatable {
  @JsonKey(name: '_id')
  final String firebaseUserId;
  final List<Manual> ownManuals;

  FullUser(this.firebaseUserId, this.ownManuals);

  factory FullUser.fromJson(Map<String, dynamic> json) =>
      _$FullUserFromJson(json);

  Map<String, dynamic> toJson() => _$FullUserToJson(this);

  @override
  List<Object> get props => [firebaseUserId, ownManuals];

  @override
  bool get stringify => true;
}

@JsonSerializable()
class PartialUser extends Equatable {
  @JsonKey(name: '_id')
  final String firebaseUserId;
  final List<CompactManual> ownManuals;

  PartialUser(this.firebaseUserId, this.ownManuals);

  factory PartialUser.fromJson(Map<String, dynamic> json) =>
      _$CompactUserFromJson(json);

  Map<String, dynamic> toJson() => _$CompactUserToJson(this);

  @override
  List<Object> get props => [firebaseUserId, ownManuals];

  @override
  bool get stringify => true;
}
