import 'package:levy_address/address.dart';
import 'package:levy_core/core/router/router.dart';

void registerMicroApps() {
  MicroAppRouterRegistry.registerMicroApp(() => AddressRouter());
}
