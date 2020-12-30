import 'package:dartz/dartz.dart';

import '../../entities/customer_entity.dart';
import '../../errors/errors.dart';
import '../../repositories/customer_repository_interface.dart';
import 'customer_get_by_id_interface.dart';

class CustomerGetById implements ICustomerGetById {
  final ICustomerRepository _customerRepository;

  CustomerGetById(this._customerRepository);

  @override
  Future<Either<CustomerError, CustomerEntity>> call(String id) async {
    return _customerRepository.getById(id);
  }
}
