import 'package:flutter/material.dart';
import 'package:levy/features/home/presentation/widgets/home_search_form_widget.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:levy_core/core.dart';
import 'package:levy_theme/core/theme/theme.dart';

final class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({
    super.key,
    this.user,
    this.departureAddress,
    this.returnAddress,
    this.departureTime,
    this.returnTime,
    required this.onNotificationButtonPressed,
    required this.onDepartureAddressSelect,
    required this.onReturnAddressSelect,
    required this.onDepartureTimeSelect,
    required this.onReturnTimeSelect,
    required this.onButtonPressed,
  });

  final UserEntity? user;
  final String? departureAddress;
  final String? returnAddress;
  final String? departureTime;
  final String? returnTime;
  final VoidCallback onNotificationButtonPressed;
  final VoidCallback onDepartureAddressSelect;
  final VoidCallback onReturnAddressSelect;
  final VoidCallback onDepartureTimeSelect;
  final VoidCallback onReturnTimeSelect;
  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeHomeAppBarWidget(
        onActionPressed: onNotificationButtonPressed,
        guestTitle: CommonsTranslation.texts.welcome,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: HomeFormWidget(
          departureAddress: departureAddress,
          returnAddress: returnAddress,
          departureTime: departureTime,
          returnTime: returnTime,
          onNotificationButtonPressed: onNotificationButtonPressed,
          onDepartureAddressSelect: onDepartureAddressSelect,
          onReturnAddressSelect: onReturnAddressSelect,
          onDepartureTimeSelect: onDepartureTimeSelect,
          onReturnTimeSelect: onReturnTimeSelect,
          onButtonPressed: onButtonPressed,
          isValid: departureAddress != null && returnAddress != null,
        ),
      ),
    );
  }
}
