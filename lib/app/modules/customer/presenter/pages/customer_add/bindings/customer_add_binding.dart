import 'package:get/get.dart';

import '../../../../domain/repositories/cep_repository_interface.dart';
import '../../../../domain/usecases/cep_get/cep_get.dart';
import '../../../../domain/usecases/cep_get/cep_get_interface.dart';
import '../../../../domain/usecases/customer_get_by_id/customer_get_by_id.dart';
import '../../../../domain/usecases/customer_get_by_id/customer_get_by_id_interface.dart';
import '../../../../domain/usecases/customer_save/customer_save.dart';
import '../../../../domain/usecases/customer_save/customer_save_interface.dart';
import '../../../../domain/usecases/customer_update/customer_update.dart';
import '../../../../domain/usecases/customer_update/customer_update_interface.dart';
import '../../../../external/datasources/cep_datasource.dart';
import '../../../../infra/datasources/cep_datasource_interface.dart';
import '../../../../infra/repositories/cep_repository.dart';
import '../customer_add_controller.dart';
import '../customer_add_store.dart';

class CustomerAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ICepDatasource>(() => CepDatasource());
    Get.lazyPut<ICepRepository>(() => CepRepository(Get.find()));
    Get.lazyPut<ICustomerSave>(() => CustomerSave(Get.find()));
    Get.lazyPut<ICustomerUpdate>(() => CustomerUpdate(Get.find()));
    Get.lazyPut<ICustomerGetById>(() => CustomerGetById(Get.find()));
    Get.lazyPut<ICepGet>(() => CepGet(Get.find()));
    Get.lazyPut(() => CustomerAddStore());
    Get.lazyPut(() => CustomerAddController(Get.find(), Get.find(), Get.find(), Get.find(), Get.find()));
  }
}
