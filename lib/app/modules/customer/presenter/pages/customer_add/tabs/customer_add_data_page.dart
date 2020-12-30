import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../../../shared/components/custom_text_form_field_widget.dart';
import '../customer_add_controller.dart';

class CustomerAddDataPage extends StatefulWidget {
  @override
  _CustomerAddDataPageState createState() => _CustomerAddDataPageState();
}

class _CustomerAddDataPageState extends State<CustomerAddDataPage> {
  final controller = Get.find<CustomerAddController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          CustomTextFormFieldWidget(
            enabled: false,
            controller: controller.store.tecId,
            labelText: 'Codigo',
            keyboardType: TextInputType.text,
            onChanged: (v) => controller.store.id = v,
          ),
          CustomTextFormFieldWidget(
            controller: controller.store.tecName,
            labelText: 'Nome',
            keyboardType: TextInputType.text,
            onValidator: (v) => v.isEmpty ? 'Campo obrigatório' : null,
            onChanged: (v) => controller.store.name = v,
          ),
          CustomTextFormFieldWidget(
            controller: controller.store.tecDocumentNumber,
            labelText: 'CPF',
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.allow(RegExp("[0-9]"))],
            onValidator: (v) => v.isEmpty ? 'Campo obrigatório' : null,
            onChanged: (v) => controller.store.documentNumber = v,
          ),
          CustomTextFormFieldWidget(
            controller: controller.store.tecEmailAddress,
            labelText: 'E-mail',
            keyboardType: TextInputType.emailAddress,
            onValidator: (v) => v.isEmpty ? 'Campo obrigatório' : null,
            onChanged: (v) => controller.store.emailAddress = v,
          ),
        ],
      ),
    );
  }
}
