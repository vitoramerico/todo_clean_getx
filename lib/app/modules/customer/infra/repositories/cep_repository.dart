import 'package:dartz/dartz.dart';

import '../../domain/entities/cep_entity.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/cep_repository_interface.dart';
import '../datasources/cep_datasource_interface.dart';

class CepRepository implements ICepRepository {
  final ICepDatasource _cepDatasource;

  CepRepository(this._cepDatasource);

  @override
  Future<Either<CustomerError, CepEntity>> get(String cep) async {
    try {
      var result = await _cepDatasource.getCep(cep);

      return Right(result);
    } catch (error) {
      return Left(DatasourceError(error.message ?? error.toString()));
    }
  }
}
