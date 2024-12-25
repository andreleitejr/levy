import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/presentation/providers/bus_usecase_provider.dart';
import 'package:levy/features/reservation/presentation/providers/get_reservation_usecase_provider.dart';
import 'package:levy/features/splash/presentation/notifiers/splash_notifier.dart';
import 'package:levy/features/splash/presentation/states/splash_state.dart';
import 'package:levy/features/user/presentation/providers/user_usecase_provider.dart';

final splashNotifierProvider = StateNotifierProvider<SplashNotifier, SplashState>((ref) {
  final userUseCase = ref.read(userUseCaseProvider);
  final reservationUseCase = ref.read(getReservationUseCaseProvider);
  final busUseCase = ref.read(busUseCaseProvider);

  return SplashNotifier(userUseCase, reservationUseCase, busUseCase);
});

