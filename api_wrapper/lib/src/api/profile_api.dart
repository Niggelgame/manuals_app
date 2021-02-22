import 'package:api_wrapper/src/models/models.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'profile_api.g.dart';

@RestApi()
abstract class ProfileApi {
  factory ProfileApi(Dio dio, {String baseUrl}) = _ProfileApi;

  @GET('/profile')
  Future<PartialUser> getOwnProfile();

  @GET('/profile/{id}')
  Future<PartialUser> getOtherUser(@Path() String id);
}