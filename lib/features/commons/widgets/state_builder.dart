import 'package:flutter/material.dart';

abstract class GenericStateBase {
  String? get errorMessage;

  bool get isLoading;
}

final class StateBuilder extends StatelessWidget {
  const StateBuilder({
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
    } else if (state.errorMessage != null) {
      return error;
    } else {
      return success;
    }
  }
}
