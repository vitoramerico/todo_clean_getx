import 'package:dartz/dartz.dart';

import '../../entities/customer_entity.dart';
import '../../errors/errors.dart';
import '../../repositories/customer_repository_interface.dart';
import 'customer_update_interface.dart';

class CustomerUpdate implements ICustomerUpdate {
  final ICustomerRepository _customerRepository;

  CustomerUpdate(this._customerRepository);

  @override
  Future<Either<CustomerError, void>> call(String id, CustomerEntity customerEntity) async {
    if (!customerEntity.isValid) return Left(ValidationError('Campos obrigatorios em branco'));

    return _customerRepository.update(customerEntity);
  }
}
