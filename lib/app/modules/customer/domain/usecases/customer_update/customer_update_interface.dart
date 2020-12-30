import 'package:dartz/dartz.dart';

import '../../entities/customer_entity.dart';
import '../../errors/errors.dart';

abstract class ICustomerUpdate {
  Future<Either<CustomerError, void>> call(String id, CustomerEntity customerEntity);
}
