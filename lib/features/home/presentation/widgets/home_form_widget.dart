import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/features/commons/widgets/theme_button.dart';
import 'package:levy/features/home/presentation/utils/home_translation.dart';
import 'package:levy/features/home/presentation/widgets/home_form_input_widget.dart';

class SearchFormWidget extends StatelessWidget {
  const SearchFormWidget({
    super.key,
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
    this.isValid = true,
  });

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
  final bool isValid;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ThemeColors.primary),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SearchFormInputWidget(
            controller: TextEditingController(text: departureAddress),
            labelText: HomeTranslation.inputs.departureAddress.labelText,
            hintText: HomeTranslation.inputs.departureAddress.hintText,
            onPressed: onDepartureAddressSelect,
            icon: ThemeIcons.home,
          ),
          SearchFormInputWidget(
            controller: TextEditingController(text: returnAddress),
            labelText: HomeTranslation.inputs.returnAddress.labelText,
            hintText: HomeTranslation.inputs.returnAddress.hintText,
            onPressed: onReturnAddressSelect,
            icon: ThemeIcons.briefcase,
          ),
          Row(
            children: [
              Expanded(
                child: SearchFormInputWidget(
                  controller: TextEditingController(text: departureTime),
                  labelText: HomeTranslation.inputs.departureTime.labelText,
                  hintText: HomeTranslation.inputs.departureTime.hintText,
                  onPressed: onDepartureTimeSelect,
                  icon: ThemeIcons.calendar,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: SearchFormInputWidget(
                  controller: TextEditingController(text: returnTime),
                  labelText: HomeTranslation.inputs.returnTime.labelText,
                  hintText: HomeTranslation.inputs.returnTime.hintText,
                  onPressed: onReturnTimeSelect,
                  icon: ThemeIcons.calendar,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ThemeButton(
              onPressed: onButtonPressed,
              title: HomeTranslation.button.title,
              isValid: isValid,
              icon: ThemeIcons.search,
            ),
          ),
        ],
      ),
    );
  }
}
