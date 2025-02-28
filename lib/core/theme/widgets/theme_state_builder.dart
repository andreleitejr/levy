import 'package:flutter/material.dart';

abstract class GenericStateBase {
  String get errorMessage;

  bool get isLoading;
}

final class ThemeStateBuilder extends StatelessWidget {
  const ThemeStateBuilder({
    super.key,
    required this.state,
    required this.loading,
    required this.success,
    required this.error,
  });

  final GenericStateBase state;
  final Widget loading;
  final Widget success;
  final Widget error;

  @override
  Widget build(BuildContext context) {
    if (state.isLoading) {
      return loading;
    } else if (state.errorMessage.isNotEmpty) {
      return error;
    } else {
      return success;
    }
  }
}
