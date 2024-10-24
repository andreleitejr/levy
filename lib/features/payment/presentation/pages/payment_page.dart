import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';
import 'package:levy/features/payment/presentation/providers/payment_notifier_provider.dart';

@RoutePage()
class PaymentPage extends ConsumerStatefulWidget {
  const PaymentPage({
    super.key,
    required this.transactionId,
    required this.onPaymentSuccess,
  });

  final String transactionId;
  final VoidCallback onPaymentSuccess;

  @override
  ConsumerState<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends ConsumerState<PaymentPage> {
  PaymentMethodType? _selectedMethod;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(paymentNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Payment')),
      body: Column(
        children: [
          if (state.errorMessage != null)
            Center(child: Text(state.errorMessage!)),
          if (state.payment != null && state.payment!.isSuccessful)
            Center(child: Text('Payment successful!')),
          DropdownButton<PaymentMethodType>(
            value: _selectedMethod,
            onChanged: (method) => setState(() {
              _selectedMethod = method;
            }),
            items: PaymentMethodType.values.map((PaymentMethodType method) {
              return DropdownMenuItem<PaymentMethodType>(
                value: method,
                child: Text(method.toString().split('.').last),
              );
            }).toList(),
          ),
          ElevatedButton(
            onPressed: _selectedMethod != null
                ? () async {
                    await ref
                        .read(paymentNotifierProvider.notifier)
                        .processPayment(
                          transactionId: widget.transactionId,
                          paymentMethod: _selectedMethod!,
                        );

                    if (state.payment?.isSuccessful ?? false) {
                      widget.onPaymentSuccess();
                    }
                  }
                : null,
            child: Text('Pay'),
          ),
        ],
      ),
    );
  }
}
