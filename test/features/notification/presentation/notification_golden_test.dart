import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/notification/data/datasources/notification_datasource.dart';
import 'package:levy/features/notification/data/models/notification_model.dart';
import 'package:levy/features/notification/domain/usecases/get_notification_usecase.dart';
import 'package:levy/features/notification/external/notification_mock.dart';
import 'package:levy/features/notification/presentation/pages/notification_page.dart';
import 'package:levy/features/notification/presentation/shimmers/notification_shimmer.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/golden_test_helper.dart';

final class NotificationDataSourceMock extends Mock implements NotificationDataSource {}

final class GetNotificationUseCaseMock extends Mock implements GetNotificationUseCase {}

void main() {
  late NotificationDataSourceMock notificationDataSourceMock;
  late GetNotificationUseCaseMock getNotificationUseCaseMock;

  setUpAll(() {
    notificationDataSourceMock = NotificationDataSourceMock();
    getNotificationUseCaseMock = GetNotificationUseCaseMock();

    GetIt.instance.registerFactory<NotificationDataSource>(() => notificationDataSourceMock);
    GetIt.instance.registerFactory<GetNotificationUseCase>(() => getNotificationUseCaseMock);
  });

  group('Notification Page Golden Test', () {
    testWidgets('Notification Page Error', (tester) async {
      final errorMessage = 'Failed to load notificationes';

      when(() => getNotificationUseCaseMock()).thenThrow(Exception(errorMessage));

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'NotificationError',
      );
    });

    testWidgets('Notification Page Loading', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: NotificationShimmer(onPop: () {}),
        testName: 'NotificationLoading',
      );
    });

    testWidgets('Notification Page Success', (tester) async {
      final c = Completer<List<NotificationModel>>();

      when(() => notificationDataSourceMock.get()).thenAnswer((_) async {

        return c.future;
      });

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: NotificationPage(),
        testName: 'NotificationSuccess',
      );

      c.complete(NotificationMock.response.map<NotificationModel>((notification) {
        return NotificationModel.fromJson(notification);
      }).toList());
    });
  });
}
