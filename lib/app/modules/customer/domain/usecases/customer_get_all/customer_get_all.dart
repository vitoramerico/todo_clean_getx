import 'package:dartz/dartz.dart';

import '../../entities/customer_entity.dart';
import '../../errors/errors.dart';
import '../../repositories/customer_repository_interface.dart';
import 'customer_get_all_interface.dart';

class CustomerGetAll implements ICustomerGetAll {
  final ICustomerRepository _customerRepository;

  CustomerGetAll(this._customerRepository);

  @override
  Future<Either<CustomerError, List<CustomerEntity>>> call(int page, int pageSize) async {
    return _customerRepository.getAll(page, pageSize);
  }
}
