import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/notification/data/datasources/notification_datasource.dart';
import 'package:levy/features/notification/data/models/notification_model.dart';
import 'package:levy/features/notification/data/repositories/notification_repository_impl.dart';
import 'package:mocktail/mocktail.dart';

class NotificationDataSourceMock extends Mock
    implements NotificationDataSource {}

void main() {
  late NotificationDataSourceMock mockDataSource;
  late NotificationRepositoryImpl repository;

  setUp(() {
    mockDataSource = NotificationDataSourceMock();
    repository = NotificationRepositoryImpl(mockDataSource);
  });

  group('NotificationRepositoryImpl - get', () {
    test('should return List<NotificationEntity> when the call is successful',
        () async {
      final expectedNotifications = [
        NotificationModel(
          image: 'https://example.com/image2.png',
          title: 'Event Reminder',
          titleSemantics: 'Reminder for your upcoming event',
          subtitle: 'Your event starts in 1 hour',
          subtitleSemantics: 'Notification for event reminder',
          datetime: '2024-10-21T14:00:00Z',
        ),
      ];

      when(() => mockDataSource.get()).thenAnswer((_) async => expectedNotifications);

      final result = await repository.get();

      expect(result, expectedNotifications);

      verify(() => mockDataSource.get()).called(1);
    });

    test('should throw an exception when the call fails', () async {
      when(() => mockDataSource.get()).thenThrow(Exception('Generic Error'));

      final call = repository.get();

      expect(call, throwsA(isA<Exception>()));

      verify(() => mockDataSource.get()).called(1);
    });
  });
}
