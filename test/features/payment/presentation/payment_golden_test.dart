import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/theme/widgets/theme_error_page.dart';
import 'package:levy/features/payment/data/datasources/payment_datasource.dart';
import 'package:levy/features/payment/domain/usecases/process_payment_usecase.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/payment/presentation/pages/payment_page.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/golden_test_helper.dart';
import '../../../mocks/entities_mocks.dart';

final class PaymentDataSourceMock extends Mock implements PaymentDataSource {}

final class ProcessPaymentUseCaseMock extends Mock implements ProcessPaymentUseCase {}

void main() {
  late PaymentDataSourceMock paymentDataSourceMock;
  late ProcessPaymentUseCaseMock processPaymentUseCaseMock;

  late ReservationEntity reservationMock;
  late PaymentMethodEntity paymentMethodMock;
  late BusEntity busMock;

  setUpAll(() {
    paymentDataSourceMock = PaymentDataSourceMock();
    processPaymentUseCaseMock = ProcessPaymentUseCaseMock();

    reservationMock = ReservationEntityMock();
    paymentMethodMock = PaymentMethodEntityMock();
    busMock = BusEntityMock();

    GetIt.instance.registerFactory<PaymentDataSource>(() => paymentDataSourceMock);
    GetIt.instance.registerFactory<ProcessPaymentUseCase>(() => processPaymentUseCaseMock);
  });

  group('Payment Page Golden Test', () {
    testWidgets('Payment Page Error', (tester) async {
      final errorMessage = 'Failed to load payments';

      when(() => processPaymentUseCaseMock(reservation: reservationMock, method: paymentMethodMock)).thenThrow(Exception(errorMessage));

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'PaymentError',
      );
    });

    testWidgets('Payment Page Success', (tester) async {
      final c = Completer<PaymentResult>();

      when(() => paymentDataSourceMock.processPayment(
        reservation: reservationMock,
        method: paymentMethodMock,
      )).thenAnswer((_) async {
        return c.future;
      });

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: PaymentPage(
          departureBus: busMock,
          returnBus: busMock,
        ),
        testName: 'PaymentSuccess',
      );

      c.complete(PaymentResult.success);
    });
  });
}