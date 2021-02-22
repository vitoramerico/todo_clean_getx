// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return CustomerModel(
    id: json['id'] as String,
    name: json['name'] as String,
    birthDate: CustomerModel._dateTimeFromMap(json['birthDate'] as String),
    documentNumber: json['documentNumber'] as String,
    addressStreet: json['addressStreet'] as String,
    addressNumber: json['addressNumber'] as String,
    addressNeighborhood: json['addressNeighborhood'] as String,
    addressCity: json['addressCity'] as String,
    addressState: json['addressState'] as String,
    addressZipCode: json['addressZipCode'] as String,
    emailAddress: json['emailAddress'] as String,
  );
}

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthDate': CustomerModel._dateTimeToMap(instance.birthDate),
      'documentNumber': instance.documentNumber,
      'addressStreet': instance.addressStreet,
      'addressNumber': instance.addressNumber,
      'addressNeighborhood': instance.addressNeighborhood,
      'addressCity': instance.addressCity,
      'addressState': instance.addressState,
      'addressZipCode': instance.addressZipCode,
      'emailAddress': instance.emailAddress,
    };
