import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/features/commons/widgets/theme_button.dart';
import 'package:levy/features/search/presentation/widgets/search_form_input_widget.dart';

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

  bool get isValid => departureAddress != null && returnAddress != null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ThemeColors.pattern,
        ),
        borderRadius: BorderRadius.circular(ThemeSizes.medium),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SearchFormInputWidget(
            controller: TextEditingController(text: departureAddress),
            labelText: 'Departure Address',
            onPressed: onDepartureAddressSelect,
          ),
          SearchFormInputWidget(
            controller: TextEditingController(text: returnAddress),
            labelText: 'Work Address',
            onPressed: onReturnAddressSelect,
          ),
          Row(
            children: [
              Expanded(
                child: SearchFormInputWidget(
                  controller: TextEditingController(text: departureTime),
                    labelText: 'Departure Time',
                  onPressed: onDepartureTimeSelect,
                ),
              ),
              const SizedBox(width: ThemeSizes.medium),
              Expanded(
                child: SearchFormInputWidget(
                  controller: TextEditingController(text: returnTime),
                  labelText: 'Return Time',
                  onPressed: onReturnTimeSelect,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(ThemeSizes.medium),
            child: ThemeButton(
              onPressed: onButtonPressed,
              title: 'Search',
              valid: isValid,
            ),
          ),
        ],
      ),
    );
  }
}
