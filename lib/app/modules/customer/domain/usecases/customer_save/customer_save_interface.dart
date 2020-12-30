import 'package:dartz/dartz.dart';

import '../../entities/customer_entity.dart';
import '../../errors/errors.dart';

abstract class ICustomerSave {
  Future<Either<CustomerError, String>> call(CustomerEntity customerEntity);
}
