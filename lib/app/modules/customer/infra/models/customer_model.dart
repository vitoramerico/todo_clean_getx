import '../../domain/entities/customer_entity.dart';

import 'package:json_annotation/json_annotation.dart';

part 'customer_model.g.dart';

@JsonSerializable()
class CustomerModel extends CustomerEntity {
  final String id;
  final String name;
  @JsonKey(fromJson: _dateTimeFromMap, toJson: _dateTimeToMap)
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
    required this.id,
    required this.name,
    required this.birthDate,
    required this.documentNumber,
    required this.addressStreet,
    required this.addressNumber,
    required this.addressNeighborhood,
    required this.addressCity,
    required this.addressState,
    required this.addressZipCode,
    required this.emailAddress,
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

  factory CustomerModel.fromEntity(CustomerEntity customerEntity) {
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

  factory CustomerModel.fromJson(Map<String, dynamic> json) => _$CustomerModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);

  static DateTime _dateTimeFromMap(String date) => DateTime.parse(date);

  static String _dateTimeToMap(DateTime dateTime) => dateTime.toIso8601String();
}
