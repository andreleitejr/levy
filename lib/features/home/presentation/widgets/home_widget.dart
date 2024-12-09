import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/features/commons/widgets/theme_user_app_bar_widget.dart';
import 'package:levy/features/home/presentation/widgets/home_form_widget.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';

final class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.user,
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

  final UserEntity user;
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
      appBar: ThemeUserAppBarWidget(
        user: user,
        onActionPressed: onNotificationButtonPressed,
      ),
      body: Padding(
        padding: const EdgeInsets.all(ThemeSizes.large),
        child: SearchFormWidget(
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
