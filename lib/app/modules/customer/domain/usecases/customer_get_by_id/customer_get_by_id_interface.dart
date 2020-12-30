import 'package:dartz/dartz.dart';

import '../../entities/customer_entity.dart';
import '../../errors/errors.dart';

abstract class ICustomerGetById {
  Future<Either<CustomerError, CustomerEntity>> call(String id);
}
