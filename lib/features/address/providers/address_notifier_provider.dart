import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/presentation/states/address_state.dart';
import 'package:levy/features/address/providers/address_usecase_provider.dart';
import 'package:levy/features/address/providers/notifiers/address_notifier.dart';

final addressNotifierProvider = StateNotifierProvider<AddressNotifier, AddressState>((ref) {
  return AddressNotifier(ref.read(addressUseCaseProvider));
});
