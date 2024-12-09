final class ReservationMock {
  const ReservationMock._();

  static final response = [
    {
      'reservationId': 'reservation_001',
      'userId': 'user_001',
      'paymentId': 'payment_001',
      'date': '2023-10-10',
      'departureBus': {
        'id': '1',
        'image': 'bus_1',
        'brand': 'Marcopolo',
        'model': 'Paradiso G8 1800 D',
        'year': '2022',
        'color': 'Blue',
        'capacity': 32,
        'amenities': ['Wi-Fi', 'Coffee', 'TV', 'Netflix'],
        'licensePlate': 'PL8R4LYF',
        'chassisNumber': 'CHS-1234567890',
        'isAccessible': true,
        'driver': {
          'id': '1',
          'image': 'driver_1',
          'name': 'John Doe',
          'birthday': '1985-05-15',
          'licenseNumber': 'ABCD123456',
          'licenseType': 'B',
          'experienceYears': 5,
          'nationality': 'Brazilian',
        },
        'routes': [
          {
            'id': '1',
            'name': 'Downtown to Uptown',
            'origin': {
              'name': 'First St',
              'street': 'First Street',
              'number': '123',
              'city': 'Metropolis',
              'state': 'NY',
              'postalCode': '10001',
              'country': 'USA',
              'latitude': 40.7128,
              'longitude': -74.0060,
            },
            'destination': {
              'name': 'Main St',
              'street': 'Main Street',
              'number': '321',
              'city': 'Metropolis',
              'state': 'NY',
              'postalCode': '10002',
              'country': 'USA',
              'latitude': 40.7138,
              'longitude': -74.0070,
            },
            'stops': [
              {
                'name': 'Second St',
                'street': 'Second Street',
                'number': '456',
                'city': 'Metropolis',
                'state': 'NY',
                'postalCode': '10001',
                'country': 'USA',
                'latitude': 40.7129,
                'longitude': -74.0050,
              },
              {
                'name': 'Third St',
                'street': 'Third Street',
                'number': '789',
                'city': 'Metropolis',
                'state': 'NY',
                'postalCode': '10001',
                'country': 'USA',
                'latitude': 40.7130,
                'longitude': -74.0040,
              },
            ],
            'distance': 10.5,
            'duration': '30 minutes',
            'departureTime': '05:00',
            'arrivalTime': '06:30',
            'isActive': true,
          },
          {
            'id': '1',
            'name': 'Uptown to Downtown',
            'origin': {
              'name': 'Third St',
              'street': 'Third Street',
              'number': '789',
              'city': 'Metropolis',
              'state': 'NY',
              'postalCode': '10001',
              'country': 'USA',
              'latitude': 40.7130,
              'longitude': -74.0040,
            },
            'destination': {
              'name': 'Airport Rd',
              'street': 'Airport Road',
              'number': '123',
              'city': 'Metropolis',
              'state': 'NY',
              'postalCode': '10001',
              'country': 'USA',
              'latitude': 40.7128,
              'longitude': -74.0060,
            },
            'stops': [
              {
                'name': 'Fifth Avenue',
                'street': 'Fifth Ave',
                'number': '321',
                'city': 'Metropolis',
                'state': 'NY',
                'postalCode': '10002',
                'country': 'USA',
                'latitude': 40.7138,
                'longitude': -74.0070,
              },
              {
                'name': 'Uptown Rd',
                'street': 'Uptown Road',
                'number': '456',
                'city': 'Metropolis',
                'state': 'NY',
                'postalCode': '10001',
                'country': 'USA',
                'latitude': 40.7128,
                'longitude': -74.0060,
              },
            ],
            'distance': 10.5,
            'duration': '30 minutes',
            'departureTime': '16:30',
            'arrivalTime': '17:40',
            'isActive': true,
          },
        ],
        'seats': [
          {
            'letter': 'A',
            'number': 1,
            'reservedBy': null,
          },
          {
            'letter': 'A',
            'number': 2,
            'reservedBy': 'user_001',
          },
          {
            'letter': 'A',
            'number': 3,
            'reservedBy': 'user_002',
          },
          {
            'letter': 'A',
            'number': 4,
            'reservedBy': null,
          },
          {
            'letter': 'B',
            'number': 1,
            'reservedBy': null,
          },
          {
            'letter': 'B',
            'number': 2,
            'reservedBy': 'user_003',
          },
          {
            'letter': 'B',
            'number': 3,
            'reservedBy': null,
          },
          {
            'letter': 'B',
            'number': 4,
            'reservedBy': null,
          },
        ],
      },
      'returnBus': {
        'id': '2',
        'image': 'bus_2',
        'brand': 'Mercedes-Benz',
        'model': 'Sprinter',
        'year': '2020',
        'color': 'Red',
        'capacity': 20,
        'amenities': ['Wi-Fi', 'Reclining Seats'],
        'licensePlate': 'MB2020',
        'chassisNumber': 'MB-9876543210',
        'isAccessible': true,
        'driver': {
          'id': '2',
          'image': 'driver_3',
          'name': 'Jane Smith',
          'birthday': '1990-08-12',
          'licenseNumber': 'XYZ987654',
          'licenseType': 'B',
          'experienceYears': 3,
          'nationality': 'Brazilian',
        },
        'routes': [
          {
            'id': '2',
            'name': 'Airport to Downtown',
            'origin': {
              'name': 'Airport Rd',
              'street': 'Airport Road',
              'number': '123',
              'city': 'Metropolis',
              'state': 'NY',
              'postalCode': '10001',
              'country': 'USA',
              'latitude': 40.7128,
              'longitude': -74.0060,
            },
            'destination': {
              'name': 'Fifth Avenue',
              'street': 'Fifth Ave',
              'number': '321',
              'city': 'Metropolis',
              'state': 'NY',
              'postalCode': '10002',
              'country': 'USA',
              'latitude': 40.7138,
              'longitude': -74.0070,
            },
            'stops': [],
            'distance': 12.0,
            'duration': '25 minutes',
            'departureTime': '05:00',
            'arrivalTime': '06:25',
            'isActive': true,
          },
          {
            'id': '2',
            'name': 'Downtown to Airport',
            'origin': {
              'name': 'Main St',
              'street': 'Main Street',
              'number': '321',
              'city': 'Metropolis',
              'state': 'NY',
              'postalCode': '10002',
              'country': 'USA',
              'latitude': 40.7138,
              'longitude': -74.0070,
            },
            'destination': {
              'name': 'Airport Rd',
              'street': 'Airport Road',
              'number': '123',
              'city': 'Metropolis',
              'state': 'NY',
              'postalCode': '10001',
              'country': 'USA',
              'latitude': 40.7128,
              'longitude': -74.0060,
            },
            'stops': [],
            'distance': 12.0,
            'duration': '25 minutes',
            'departureTime': '16:30',
            'arrivalTime': '17:55',
            'isActive': true,
          },
        ],
        'seats': [
          {
            'letter': 'A',
            'number': 1,
            'reservedBy': null,
          },
          {
            'letter': 'A',
            'number': 2,
            'reservedBy': 'user_002',
          },
        ],
      },
    },
  ];
}
