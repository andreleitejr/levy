import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/commons/theme/widgets/theme_widgets.dart';
import 'package:levy/features/payment_method/presentation/providers/payment_method_notifier_provider.dart';
import 'package:levy/features/payment_method/presentation/shimmers/payment_method_shimmer.dart';
import 'package:levy/features/payment_method/presentation/widgets/payment_method_widget.dart';

@RoutePage()
final class PaymentMethodPage extends ConsumerStatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  ConsumerState<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

final class _PaymentMethodPageState extends ConsumerState<PaymentMethodPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(paymentMethodNotifierProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(paymentMethodNotifierProvider);

    return ThemeStateBuilder(
      state: state,
      loading: PaymentMethodShimmer(
        onPop: () => context.router.back(),
      ),
      success: PaymentMethodWidget(
        items: state.data,
        onPop: () => context.router.back(),
        onItemPressed: (item) => context.router.maybePop(item),
      ),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }
}
