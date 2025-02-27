import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/presentation/providers/address_notifier_provider.dart';
import 'package:levy/features/address/presentation/shimmers/address_shimmer.dart';
import 'package:levy/features/address/presentation/widgets/address_widget.dart';
import 'package:levy/features/commons/theme/widgets/theme_state_builder.dart';
import 'package:levy/features/commons/theme/widgets/theme_error_page.dart';

@RoutePage()
final class AddressPage extends ConsumerStatefulWidget {
  const AddressPage({super.key});

  @override
  ConsumerState<AddressPage> createState() => _AddressPageState();
}

final class _AddressPageState extends ConsumerState<AddressPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addressNotifierProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addressNotifierProvider);
    final notifier = ref.read(addressNotifierProvider.notifier);


    return ThemeStateBuilder(
      state: state,
      loading: AddressShimmer(
        onPop: () => context.router.back(),
      ),
      success: AddressWidget(
        items: state.data,
        onPop: () => context.router.back(),
        onItemPressed: (item) => context.router.maybePop(item),
        onChanged: notifier.filterAddresses,
      ),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }
}
