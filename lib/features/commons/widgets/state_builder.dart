import 'package:flutter/material.dart';

final class StateBuilder<S, T> extends StatelessWidget {
  const StateBuilder({
    super.key,
    required this.state,
    required this.loadingBuilder,
    required this.errorBuilder,
    required this.successBuilder,
  });

  final S state;
  final Widget Function() loadingBuilder;
  final Widget Function(String message) errorBuilder;
  final Widget Function(List<T> data) successBuilder;

  @override
  Widget build(BuildContext context) {
    if ((state as dynamic).isLoading) {
      return loadingBuilder();
    } else if ((state as dynamic).errorMessage != null) {
      return errorBuilder((state as dynamic).errorMessage!);
    } else if ((state as dynamic).data != null) {
      return successBuilder((state as dynamic).data);
    }

    return const SizedBox.shrink();
  }
}
