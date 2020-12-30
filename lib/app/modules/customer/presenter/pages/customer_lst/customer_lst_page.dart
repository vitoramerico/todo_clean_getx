import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'components/list_customer_widget.dart';
import 'customer_lst_controller.dart';

class CustomerLstPage extends GetView<CustomerLstController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Clientes'),
        centerTitle: true,
      ),
      body: ListCustomerWidget(
        controller: controller,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: controller.openPageCustomerAdd,
      ),
    );
  }
}
