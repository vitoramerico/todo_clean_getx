import 'package:get/get.dart';

import '../../../../../../shared/connect/custom_connect.dart';
import '../../../../../../shared/connect/custom_connect_interface.dart';
import '../../../../domain/repositories/customer_repository_interface.dart';
import '../../../../domain/usecases/customer_get_all/customer_get_all.dart';
import '../../../../domain/usecases/customer_get_all/customer_get_all_interface.dart';
import '../../../../external/datasources/customer_datasource.dart';
import '../../../../infra/datasources/customer_datasource_interface.dart';
import '../../../../infra/repositories/customer_repository.dart';
import '../customer_lst_controller.dart';
import '../customer_lst_store.dart';

class CustomerLstBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ICustomConnect>(() => CustomConnect());
    Get.lazyPut<ICustomerDatasource>(() => CustomerDatasource(Get.find()));
    Get.lazyPut<ICustomerRepository>(() => CustomerRepository(Get.find()));
    Get.lazyPut<ICustomerGetAll>(() => CustomerGetAll(Get.find()));
    Get.lazyPut(() => CustomerLstStore());
    Get.lazyPut(() => CustomerLstController(Get.find(), Get.find()));
  }
}
