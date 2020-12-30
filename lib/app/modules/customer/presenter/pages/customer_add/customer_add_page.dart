import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/bottom_navigation_bar_widget.dart';
import 'components/pages_widget.dart';
import 'customer_add_controller.dart';

class CustomerAddPage extends GetView<CustomerAddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro Cliente'),
        centerTitle: true,
      ),
      body: Form(
        key: controller.store.formKey,
        child: PagesWidget(controller: controller),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(controller: controller),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: controller.save,
      ),
    );
  }
}
