import 'package:flutter/material.dart';

final class ThemeErrorWidget extends StatelessWidget {
  const ThemeErrorWidget({
    super.key,
    this.message,
  });

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(message ?? 'Message'),
    );
  }
}
