import 'package:flutter/material.dart';

class SearchFormInput extends StatelessWidget {
  const SearchFormInput({
    super.key,
    required this.controller,
    required this.labelText,
    required this.onPressed,
  });

  final TextEditingController controller;
  final String labelText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(labelText: labelText),
      onTap: onPressed,
      controller: controller,
    );
  }
}
// () async {
// final selectedAddress =
//     await context.router.push<AddressEntity>(AddressRoute());
//
// if (selectedAddress != null) {
// searchNotifier.updateHomeAddress(selectedAddress);
// }
// },