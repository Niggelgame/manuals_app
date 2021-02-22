

import 'package:api_wrapper/api_wrapper.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'manual_api.g.dart';


@RestApi()
abstract class ManualApi {
  factory ManualApi(Dio dio, {String baseUrl}) = _ManualApi;

  @GET('/manual/{id}')
  Future<Manual> getManualById(@Path() String id);

  @GET('/manuals/own', )
  Future<ManualsSnippet> getOwnManuals();

  @POST('/manuals')
  Future<Manual> createManual(@Body() CreationManual manual);
}