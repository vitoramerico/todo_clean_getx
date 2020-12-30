import 'package:dartz/dartz.dart';

import '../../entities/customer_entity.dart';
import '../../errors/errors.dart';

abstract class ICustomerGetAll {
  Future<Either<CustomerError, List<CustomerEntity>>> call(int page, int pageSize);
}
