

import 'package:api_wrapper/api_wrapper.dart';

abstract class ManualRepository {
  Future<Manual> getManualById(String id);
  Future<ManualsSnippet> getOwnManuals();
  Future<Manual> createManual(CreationManual creationSnippet);
}

class CustomManualRepository extends ManualRepository {
  @override
  Future<Manual> createManual(CreationManual creationSnippet) {
    return ApiWrapper.instance.manualApi.createManual(creationSnippet);
  }

  @override
  Future<Manual> getManualById(String id) {
    return ApiWrapper.instance.manualApi.getManualById(id);
  }

  @override
  Future<ManualsSnippet> getOwnManuals() {
    return ApiWrapper.instance.manualApi.getOwnManuals();
  }
}