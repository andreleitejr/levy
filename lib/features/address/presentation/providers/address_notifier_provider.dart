import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/presentation/notifiers/address_notifier.dart';
import 'package:levy/features/address/presentation/providers/address_usecase_provider.dart';
import 'package:levy/features/address/presentation/states/address_state.dart';

final addressNotifierProvider = StateNotifierProvider<AddressNotifier, AddressState>((ref) {
  return AddressNotifier(ref.read(addressUseCaseProvider));
});
