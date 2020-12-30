import 'package:dartz/dartz.dart';

import '../../domain/entities/customer_entity.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/customer_repository_interface.dart';
import '../datasources/customer_datasource_interface.dart';
import '../models/customer_model.dart';

class CustomerRepository implements ICustomerRepository {
  final ICustomerDatasource _customerDatasource;

  CustomerRepository(this._customerDatasource);

  @override
  Future<Either<CustomerError, String>> save(CustomerEntity customerEntity) async {
    try {
      var mapper = CustomerModel.fromEntity(customerEntity);

      var result = await _customerDatasource.save(mapper);

      if (result == null) return Left(DatasourceError('Erro ao salvar dados'));

      return Right(result);
    } on ArgumentError catch (error) {
      return Left(DatasourceError(error.message));
    } catch (error) {
      return Left(DatasourceError(error.toString()));
    }
  }

  @override
  Future<Either<CustomerError, String>> update(CustomerEntity customerEntity) async {
    try {
      var mapper = CustomerModel.fromEntity(customerEntity);

      var result = await _customerDatasource.update(mapper);

      return Right(result);
    } on ArgumentError catch (error) {
      return Left(DatasourceError(error.message));
    } catch (error) {
      return Left(DatasourceError(error.toString()));
    }
  }

  @override
  Future<Either<CustomerError, CustomerEntity>> getById(String id) async {
    try {
      var result = await _customerDatasource.getById(id);

      return Right(result);
    } on ArgumentError catch (error) {
      return Left(DatasourceError(error.message));
    } catch (error) {
      return Left(DatasourceError(error.toString()));
    }
  }

  @override
  Future<Either<CustomerError, List<CustomerEntity>>> getAll(int page, int pageSize) async {
    try {
      var result = await _customerDatasource.getAll(page, pageSize);

      return Right(result);
    } on ArgumentError catch (error) {
      return Left(DatasourceError(error.message));
    } catch (error) {
      return Left(DatasourceError(error.toString()));
    }
  }
}
