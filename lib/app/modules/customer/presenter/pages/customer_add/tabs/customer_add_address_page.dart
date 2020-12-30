import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../../../shared/components/circular_button_widget.dart';
import '../../../../../../shared/components/custom_text_form_field_widget.dart';
import '../customer_add_controller.dart';

class CustomerAddAddressPage extends StatefulWidget {
  @override
  _CustomerAddAddressPageState createState() => _CustomerAddAddressPageState();
}

class _CustomerAddAddressPageState extends State<CustomerAddAddressPage> {
  final controller = Get.find<CustomerAddController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: CustomTextFormFieldWidget(
                  controller: controller.store.tecAddressZipCode,
                  labelText: 'Cep',
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.allow(RegExp("[0-9]"))],
                  onChanged: (v) => controller.store.addressZipCode = v,
                ),
              ),
              Obx(
                () => CircularButtonWidget(
                  isLoading: controller.store.loadingZipCode,
                  icon: Icons.search,
                  onPressed: controller.getCep,
                ),
              ),
            ],
          ),
          CustomTextFormFieldWidget(
            controller: controller.store.tecAddressStreet,
            labelText: 'Rua',
            keyboardType: TextInputType.text,
            onChanged: (v) => controller.store.addressStreet = v,
          ),
          CustomTextFormFieldWidget(
            controller: controller.store.tecAddressNumber,
            labelText: 'Numero',
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.allow(RegExp("[0-9]"))],
            onChanged: (v) => controller.store.addressNumber = v,
          ),
          CustomTextFormFieldWidget(
            controller: controller.store.tecAddressNeighborhood,
            labelText: 'Bairro',
            keyboardType: TextInputType.text,
            onChanged: (v) => controller.store.addressNeighborhood = v,
          ),
          CustomTextFormFieldWidget(
            controller: controller.store.tecAddressCity,
            labelText: 'Cidade',
            keyboardType: TextInputType.text,
            onChanged: (v) => controller.store.addressCity = v,
          ),
          CustomTextFormFieldWidget(
            controller: controller.store.tecAddressState,
            labelText: 'Estado',
            keyboardType: TextInputType.text,
            onChanged: (v) => controller.store.addressState = v,
          ),
        ],
      ),
    );
  }
}
