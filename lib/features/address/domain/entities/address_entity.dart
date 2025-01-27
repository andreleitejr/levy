abstract class AddressEntity {
  const AddressEntity();

  String get id;
  String get name;
  String get street;
  String get number;
  String get city;
  String get state;
  String get postalCode;
  String get country;
  double get latitude;
  double get longitude;

  String get line => '$number $street, $city, $state $postalCode';
}
