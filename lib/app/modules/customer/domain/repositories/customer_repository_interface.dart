import 'package:dartz/dartz.dart';

import '../entities/customer_entity.dart';
import '../errors/errors.dart';

abstract class ICustomerRepository {
  Future<Either<CustomerError, String>> save(CustomerEntity customerEntity);
  Future<Either<CustomerError, String>> update(CustomerEntity customerEntity);
  Future<Either<CustomerError, CustomerEntity>> getById(String id);
  Future<Either<CustomerError, List<CustomerEntity>>> getAll(int page, int pageSize);
}
