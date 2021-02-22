import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../domain/entities/customer_entity.dart';

class CustomerAddStore extends GetxController {
  final formKey = GlobalKey<FormState>();

  final tecId = TextEditingController();
  final tecName = TextEditingController();
  final tecDocumentNumber = TextEditingController();
  final tecEmailAddress = TextEditingController();
  final tecAddressStreet = TextEditingController();
  final tecAddressNumber = TextEditingController();
  final tecAddressNeighborhood = TextEditingController();
  final tecAddressCity = TextEditingController();
  final tecAddressState = TextEditingController();
  final tecAddressZipCode = TextEditingController();

  final _id = ''.obs;
  set id(String value) => _id.value = value;
  String get id => _id.value;

  final _name = ''.obs;
  set name(String value) => _name.value = value;
  String get name => _name.value;

  var birthDate = DateTime.now();

  final _documentNumber = ''.obs;
  set documentNumber(String value) => _documentNumber.value = value;
  String get documentNumber => _documentNumber.value;

  final _emailAddress = ''.obs;
  set emailAddress(String value) => _emailAddress.value = value;
  String get emailAddress => _emailAddress.value;

  final _addressStreet = ''.obs;
  set addressStreet(String value) => _addressStreet.value = value;
  String get addressStreet => _addressStreet.value;

  final _addressNumber = ''.obs;
  set addressNumber(String value) => _addressNumber.value = value;
  String get addressNumber => _addressNumber.value;

  final _addressNeighborhood = ''.obs;
  set addressNeighborhood(String value) => _addressNeighborhood.value = value;
  String get addressNeighborhood => _addressNeighborhood.value;

  final _addressCity = ''.obs;
  set addressCity(String value) => _addressCity.value = value;
  String get addressCity => _addressCity.value;

  final _addressState = ''.obs;
  set addressState(String value) => _addressState.value = value;
  String get addressState => _addressState.value;

  final _addressZipCode = ''.obs;
  set addressZipCode(String value) => _addressZipCode.value = value;
  String get addressZipCode => _addressZipCode.value;

  final _loadingZipCode = false.obs;
  set loadingZipCode(bool value) => _loadingZipCode.value = value;
  bool get loadingZipCode => _loadingZipCode.value;

  CustomerAddStore() {
    ever(_id, (String v) => tecId.value = tecId.value.copyWith(text: v));
    ever(_name, (String v) => tecName.value = tecName.value.copyWith(text: v));
    ever(_documentNumber, (String v) => tecDocumentNumber.value = tecDocumentNumber.value.copyWith(text: v));
    ever(_emailAddress, (String v) => tecEmailAddress.value = tecEmailAddress.value.copyWith(text: v));
    ever(_addressStreet, (String v) => tecAddressStreet.value = tecAddressStreet.value.copyWith(text: v));
    ever(_addressNumber, (String v) => tecAddressNumber.value = tecAddressNumber.value.copyWith(text: v));
    ever(_addressNeighborhood,
        (String v) => tecAddressNeighborhood.value = tecAddressNeighborhood.value.copyWith(text: v));
    ever(_addressCity, (String v) => tecAddressCity.value = tecAddressCity.value.copyWith(text: v));
    ever(_addressState, (String v) => tecAddressState.value = tecAddressState.value.copyWith(text: v));
    ever(_addressZipCode, (String v) => tecAddressZipCode.value = tecAddressZipCode.value.copyWith(text: v));
  }

  @override
  void onClose() {
    tecId.dispose();
    tecName.dispose();
    tecDocumentNumber.dispose();
    tecEmailAddress.dispose();
    tecAddressStreet.dispose();
    tecAddressNumber.dispose();
    tecAddressNeighborhood.dispose();
    tecAddressCity.dispose();
    tecAddressState.dispose();
    tecAddressZipCode.dispose();
    super.onClose();
  }

  CustomerEntity get customer => CustomerEntity(
        id,
        name,
        birthDate,
        documentNumber,
        addressStreet,
        addressNumber,
        addressNeighborhood,
        addressCity,
        addressState,
        addressZipCode,
        emailAddress,
      );

  set customer(CustomerEntity value) {
    id = value.id;
    name = value.name;
    birthDate = value.birthDate;
    documentNumber = value.documentNumber;
    emailAddress = value.emailAddress;
    addressStreet = value.addressStreet;
    addressNumber = value.addressNumber;
    addressNeighborhood = value.addressNeighborhood;
    addressCity = value.addressCity;
    addressState = value.addressState;
    addressZipCode = value.addressZipCode;
  }
}
