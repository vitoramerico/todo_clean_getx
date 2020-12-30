import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../../shared/routes/app_pages.dart';
import '../../../domain/entities/customer_entity.dart';
import '../../../domain/usecases/customer_get_all/customer_get_all_interface.dart';
import 'customer_lst_store.dart';

class CustomerLstController extends GetxController with StateMixin<List<CustomerEntity>> {
  final ICustomerGetAll _customerGetAll;
  final CustomerLstStore store;

  CustomerLstController(this._customerGetAll, this.store);

  @override
  void onInit() {
    super.onInit();
    ever(store.paginationFilter, (_) => _init());
    _changePaginationFilter(1, 20);
  }

  Future<void> _init() async {
    var result = await _customerGetAll(store.page, store.limit);

    result.fold((error) {
      change(null, status: RxStatus.error(error.message));
    }, (value) {
      if (value.isEmpty) store.lastPage = true;

      store.lstCustomer.addAll(value);

      change(store.lstCustomer, status: store.lstCustomer.isEmpty ? RxStatus.empty() : RxStatus.success());
    });
  }

  void openPageCustomerAdd({CustomerEntity value}) {
    Get.toNamed(Get.currentRoute + Routes.DETAILS, arguments: value?.id).then((value) {
      if (value != null && value) {
        _changeFirstPage();
      }
    });
  }

  void loadNextPage() => _changePaginationFilter(store.page + 1, store.limit);

  void _changeFirstPage() {
    store.lstCustomer.clear();
    store.lastPage = false;
    _changePaginationFilter(1, 20);
  }

  void _changePaginationFilter(int page, int limit) {
    store.paginationFilter.update((val) {
      val.page = page;
      val.limit = limit;
    });
  }
}
