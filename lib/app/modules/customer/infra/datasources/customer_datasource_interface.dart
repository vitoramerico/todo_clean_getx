import '../models/customer_model.dart';

abstract class ICustomerDatasource {
  Future<String> save(CustomerModel customerModel);
  Future<String> update(CustomerModel customerModel);
  Future<CustomerModel> getById(String id);
  Future<List<CustomerModel>> getAll(int page, int pageSize);
}
