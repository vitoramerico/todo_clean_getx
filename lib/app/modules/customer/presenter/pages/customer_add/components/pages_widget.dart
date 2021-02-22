import 'package:flutter/material.dart';

import '../tabs/customer_add_address_page.dart';
import '../customer_add_controller.dart';
import '../tabs/customer_add_data_page.dart';

class PagesWidget extends StatelessWidget {
  final CustomerAddController controller;

  const PagesWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller.pageController,
      children: <Widget>[
        CustomerAddDataPage(),
        CustomerAddAddressPage(),
      ],
    );
  }
}
