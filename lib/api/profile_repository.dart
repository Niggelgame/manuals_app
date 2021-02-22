import 'package:api_wrapper/api_wrapper.dart';

abstract class ProfileRepository {
  Future<PartialUser> getOwnUser();

  Future<PartialUser> getOtherUser(String userId);
}

class CustomProfileRepository extends ProfileRepository {
  @override
  Future<PartialUser> getOtherUser(String userId) {
    return ApiWrapper.instance.profileApi.getOtherUser(userId);
  }

  @override
  Future<PartialUser> getOwnUser() {
    return ApiWrapper.instance.profileApi.getOwnProfile();
  }
}
