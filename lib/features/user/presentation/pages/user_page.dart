import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/commons/theme/widgets/theme_widgets.dart';
import 'package:levy/features/user/presentation/providers/user_providers.dart';
import 'package:levy/features/user/presentation/widgets/user_widget.dart';

@RoutePage()
final class UserPage extends ConsumerStatefulWidget {
  const UserPage({super.key});

  @override
  ConsumerState<UserPage> createState() => _AddressPageState();
}

final class _AddressPageState extends ConsumerState<UserPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(userNotifierProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(userNotifierProvider);

    return ThemeStateBuilder(
      state: state,
      loading: ThemeLoadingWidget(),
      success: UserWidget(
        user: state.data,
      ),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }
}
