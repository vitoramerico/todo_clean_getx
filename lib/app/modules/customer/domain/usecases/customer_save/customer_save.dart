import 'package:dartz/dartz.dart';

import '../../entities/customer_entity.dart';
import '../../errors/errors.dart';
import '../../repositories/customer_repository_interface.dart';
import 'customer_save_interface.dart';

class CustomerSave implements ICustomerSave {
  final ICustomerRepository _customerRepository;

  CustomerSave(this._customerRepository);

  @override
  Future<Either<CustomerError, String>> call(CustomerEntity customerEntity) async {
    if (!customerEntity.isValid) return Left(ValidationError('Campos obrigatorios em branco'));

    return _customerRepository.save(customerEntity);
  }
}
