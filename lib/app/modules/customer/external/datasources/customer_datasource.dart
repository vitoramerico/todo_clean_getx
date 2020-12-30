import 'dart:async';

import 'package:todo_clean_getx/app/shared/connect/result_model.dart';

import '../../../../shared/connect/custom_connect_interface.dart';
import '../../infra/datasources/customer_datasource_interface.dart';
import '../../infra/models/customer_model.dart';

class CustomerDatasource implements ICustomerDatasource {
  static const String URL_BASE = '/api/v1/customers';

  final ICustomConnect _customDio;

  CustomerDatasource(this._customDio);

  @override
  Future<CustomerModel> getById(String id) async {
    var client = _customDio.instance;

    var parameters = {'id': id};

    var result = await client.get<ResultModel>(
      '$URL_BASE/get',
      query: parameters,
      decoder: (v) => ResultModel.fromMap(v),
    );

    if (result.hasError)
      throw ArgumentError(result.statusCode == 400 ? result.body.errorText : result.statusText);

    return CustomerModel.fromMap(result.body.data);
  }

  @override
  Future<List<CustomerModel>> getAll(int page, int pageSize) async {
    var client = _customDio.instance;

    var parameters = {
      'page': page?.toString(),
      'pageSize': pageSize?.toString(),
    };

    var result = await client.get<ResultModel>(
      '$URL_BASE/getAll',
      query: parameters,
      decoder: (v) => ResultModel.fromMap(v),
    );

    if (result.hasError)
      throw ArgumentError(result.statusCode == 400 ? result.body.errorText : result.statusText);

    List<dynamic> data = result.body.data;

    return data.map((v) => CustomerModel.fromMap(v)).toList();
  }

  @override
  Future<String> save(CustomerModel customerModel) async {
    var client = _customDio.instance;

    var result = await client.post<ResultModel>(
      '$URL_BASE/add',
      customerModel.toJson(),
      decoder: (v) => ResultModel.fromMap(v),
    );

    if (result.hasError)
      throw ArgumentError(result.statusCode == 400 ? result.body.errorText : result.statusText);

    return result.body.data['id'];
  }

  @override
  Future<String> update(CustomerModel customerModel) async {
    var client = _customDio.instance;

    var result = await client.post<ResultModel>(
      '$URL_BASE/edit',
      customerModel.toJson(),
      decoder: (v) => ResultModel.fromMap(v),
    );

    if (result.hasError)
      throw ArgumentError(result.statusCode == 400 ? result.body.errorText : result.statusText);

    return result.body.data['id'];
  }
}
