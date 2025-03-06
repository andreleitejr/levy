import 'package:levy_shared_entities/entities.dart';

final class UserMock {
  const UserMock._();

  static Map<String, dynamic> getAddressById(String id) {
    return AddressMock.response.firstWhere((address) => address['id'] == id);
  }

  static final response =  {
    'id': 'f2c52cfd-c017-4491-b9b2-03f49fe64d68',
    'name': 'Jane',
    'lastName': 'Doe',
    'age': 24,
    'email': 'jane.doe@example.com',
    'phoneNumber': '+1234567890',
    'birthday': '2000 -01-15T00:00:00.000',
    'image': 'user',
    'address': getAddressById('15d9f22a-098e-4a36-8958-2c9af0120c9b'),
  };
}
