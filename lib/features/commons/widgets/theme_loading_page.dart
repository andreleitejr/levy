import 'package:flutter/material.dart';

final class ThemeLoadingWidget extends StatelessWidget {
  const ThemeLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
