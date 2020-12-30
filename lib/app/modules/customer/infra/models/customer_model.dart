import 'dart:convert';

import '../../domain/entities/customer_entity.dart';

class CustomerModel extends CustomerEntity {
  final String id;
  final String name;
  final DateTime birthDate;
  final String documentNumber;
  final String addressStreet;
  final String addressNumber;
  final String addressNeighborhood;
  final String addressCity;
  final String addressState;
  final String addressZipCode;
  final String emailAddress;

  CustomerModel({
    this.id,
    this.name,
    this.birthDate,
    this.documentNumber,
    this.addressStreet,
    this.addressNumber,
    this.addressNeighborhood,
    this.addressCity,
    this.addressState,
    this.addressZipCode,
    this.emailAddress,
  }) : super(
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

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'birthDate': birthDate?.toIso8601String(),
      'documentNumber': documentNumber,
      'addressStreet': addressStreet,
      'addressNumber': addressNumber,
      'addressNeighborhood': addressNeighborhood,
      'addressCity': addressCity,
      'addressState': addressState,
      'addressZipCode': addressZipCode,
      'emailAddress': emailAddress,
    };
  }

  factory CustomerModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return CustomerModel(
      id: map['id'],
      name: map['name'],
      birthDate: map['birthDate'] != null ? DateTime.parse(map['birthDate']) : null,
      documentNumber: map['documentNumber'],
      addressStreet: map['addressStreet'],
      addressNumber: map['addressNumber'],
      addressNeighborhood: map['addressNeighborhood'],
      addressCity: map['addressCity'],
      addressState: map['addressState'],
      addressZipCode: map['addressZipCode'],
      emailAddress: map['emailAddress'],
    );
  }

  factory CustomerModel.fromEntity(CustomerEntity customerEntity) {
    if (customerEntity == null) return null;

    return CustomerModel(
      id: customerEntity.id,
      name: customerEntity.name,
      birthDate: customerEntity.birthDate,
      documentNumber: customerEntity.documentNumber,
      addressStreet: customerEntity.addressStreet,
      addressNumber: customerEntity.addressNumber,
      addressNeighborhood: customerEntity.addressNeighborhood,
      addressCity: customerEntity.addressCity,
      addressState: customerEntity.addressState,
      addressZipCode: customerEntity.addressZipCode,
      emailAddress: customerEntity.emailAddress,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerModel.fromJson(String source) => CustomerModel.fromMap(json.decode(source));
}
