final class UserMock {
  const UserMock._();

  static final response =  {
    'id': '1',
    'name': 'John',
    'lastName': 'Doe',
    'age': 30,
    'email': 'john.doe@example.com',
    'phoneNumber': '+1234567890',
    'birthday': '1993-01-15T00:00:00.000',
    'image': 'https://media.istockphoto.com/id/1213961256/photo/head-shot-excited-african-american-man-showing-big-size-gesture.jpg',
    'address': {
      'name': 'First St',
      'street': 'First Street',
      'number': '123',
      'city': 'Metropolis',
      'state': 'NY',
      'postalCode': '10001',
      'country': 'USA',
      'latitude': 40.7128,
      'longitude': -74.0060,
    }
  };
}
