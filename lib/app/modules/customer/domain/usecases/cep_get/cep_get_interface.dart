import 'package:dartz/dartz.dart';

import '../../entities/cep_entity.dart';
import '../../errors/errors.dart';

abstract class ICepGet {
  Future<Either<CustomerError, CepEntity>> call(String cep);
}
