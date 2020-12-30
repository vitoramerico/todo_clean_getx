import 'package:dartz/dartz.dart';

import '../../entities/cep_entity.dart';
import '../../errors/errors.dart';
import '../../repositories/cep_repository_interface.dart';
import 'cep_get_interface.dart';

class CepGet implements ICepGet {
  final ICepRepository _cepRepository;

  CepGet(this._cepRepository);

  @override
  Future<Either<CustomerError, CepEntity>> call(String cep) async {
    if (cep == null || cep.isEmpty) return Left(ValidationError('Cep é obrigatório'));

    return _cepRepository.get(cep);
  }
}
