import 'package:get/get.dart';

import '../../modules/customer/presenter/pages/customer_add/bindings/customer_add_binding.dart';
import '../../modules/customer/presenter/pages/customer_add/customer_add_page.dart';
import '../../modules/customer/presenter/pages/customer_lst/bindings/customer_lst_binding.dart';
import '../../modules/customer/presenter/pages/customer_lst/customer_lst_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.CUSTOMER;

  static final routes = [
    GetPage(
      name: Routes.CUSTOMER,
      page: () => CustomerLstPage(),
      binding: CustomerLstBinding(),
      children: [
        GetPage(
          name: Routes.DETAILS,
          page: () => CustomerAddPage(),
          bindings: [CustomerAddBinding()],
        ),
      ],
    ),
  ];
}
