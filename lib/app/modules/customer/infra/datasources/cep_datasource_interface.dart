import '../models/cep_model.dart';

abstract class ICepDatasource {
  Future<CepModel> getCep(String cep);
}
