class CustomerEntity {
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

  CustomerEntity(
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
  );

  CustomerEntity copyWith({
    String? id,
    String? name,
    DateTime? birthDate,
    String? documentNumber,
    String? addressStreet,
    String? addressNumber,
    String? addressNeighborhood,
    String? addressCity,
    String? addressState,
    String? addressZipCode,
    String? emailAddress,
  }) {
    return CustomerEntity(
      id ?? this.id,
      name ?? this.name,
      birthDate ?? this.birthDate,
      documentNumber ?? this.documentNumber,
      addressStreet ?? this.addressStreet,
      addressNumber ?? this.addressNumber,
      addressNeighborhood ?? this.addressNeighborhood,
      addressCity ?? this.addressCity,
      addressState ?? this.addressState,
      addressZipCode ?? this.addressZipCode,
      emailAddress ?? this.emailAddress,
    );
  }

  bool get isValid => name.isNotEmpty && documentNumber.isNotEmpty && emailAddress.isNotEmpty;
}
