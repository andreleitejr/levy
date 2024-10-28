import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/presentation/providers/address_notifier_provider.dart';
import 'package:levy/features/address/presentation/widgets/address_widget.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/commons/widgets/theme_loading_page.dart';

@RoutePage()
final class AddressPage extends ConsumerStatefulWidget {
  const AddressPage({
    super.key,
  });

  @override
  ConsumerState<AddressPage> createState() => _AddressPageState();
}

final class _AddressPageState extends ConsumerState<AddressPage> {
  @override
  void initState() {
    super.initState();
    ref.read(addressNotifierProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addressNotifierProvider);

    return StateBuilder(
      state: state,
      loading: ThemeLoadingWidget(),
      success: AddressWidget(
        items: state.data!,
        onPop: () {},
        onItemPressed: (item) => context.router.maybePop(item),
      ),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }
}
