import 'dart:async';

import 'package:get/get.dart';

import '../../infra/datasources/cep_datasource_interface.dart';
import '../../infra/models/cep_model.dart';

class CepDatasource extends GetConnect implements ICepDatasource {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://viacep.com.br/ws/';
  }

  @override
  Future<CepModel> getCep(String cep) async {
    var result = await get<CepModel>(
      '$cep/json',
      decoder: (v) => CepModel.fromJson(v),
    );

    if (result.hasError) throw Exception(result.statusText);

    return result.body;
  }
}
