import 'package:get/get.dart';

import '../../../domain/entities/customer_entity.dart';
import 'utils/pagination_filter.dart';

class CustomerLstStore extends GetxController {
  final _lstCustomer = <CustomerEntity>[].obs;
  List<CustomerEntity> get lstCustomer => _lstCustomer;

  final paginationFilter = PaginationFilter(1, 15).obs;
  int get limit => paginationFilter.value.limit;
  int get page => paginationFilter.value.page;

  final _lastPage = false.obs;
  bool get lastPage => _lastPage.value;
  set lastPage(bool v) => _lastPage.value = v;
}
