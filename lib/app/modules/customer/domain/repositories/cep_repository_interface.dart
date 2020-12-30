import 'package:dartz/dartz.dart';

import '../entities/cep_entity.dart';
import '../errors/errors.dart';

abstract class ICepRepository {
  Future<Either<CustomerError, CepEntity>> get(String cep);
}
