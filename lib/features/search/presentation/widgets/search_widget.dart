import 'package:flutter/material.dart';
import 'package:levy/features/commons/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/widgets/theme_button.dart';
import 'package:levy/features/search/presentation/utils/search_translation.dart';
import 'package:levy/features/search/presentation/widgets/search_form_input.dart';

final class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    this.departureAddress,
    this.returnAddress,
    this.departureTime,
    this.returnTime,
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
  final VoidCallback onDepartureAddressSelect;
  final VoidCallback onReturnAddressSelect;
  final VoidCallback onDepartureTimeSelect;
  final VoidCallback onReturnTimeSelect;
  final VoidCallback onButtonPressed;

  bool get isValid => departureAddress != null && returnAddress != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: SearchTranslation.header.title,
      ),
      body: Column(
        children: [
          SearchFormInput(
            controller: TextEditingController(text: departureAddress),
            labelText: 'Endereço de Partida',
            onPressed: onDepartureAddressSelect,
          ),
          SearchFormInput(
            controller: TextEditingController(text: returnAddress),
            labelText: 'Endereço de Retorno',
            onPressed: onReturnAddressSelect,
          ),
          SearchFormInput(
            controller: TextEditingController(text: departureTime),
            labelText: 'Horário de Partida',
            onPressed: onDepartureTimeSelect,
          ),
          SearchFormInput(
            controller: TextEditingController(text: returnTime),
            labelText: 'Horário de Partida',
            onPressed: onReturnTimeSelect,
          ),
          ThemeButton(
            onPressed: onButtonPressed,
            title: 'Ir para Payment',
            valid: isValid,
          ),
        ],
      ),
    );
  }
}
