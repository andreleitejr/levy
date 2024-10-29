import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/commons/widgets/theme_loading_page.dart';
import 'package:levy/features/search/data/models/search_model.dart';
import 'package:levy/features/search/presentation/notifiers/search_notifier.dart';
import 'package:levy/features/search/presentation/providers/search_notifier_provider.dart';
import 'package:levy/features/search/presentation/states/search_state.dart';
import 'package:levy/features/search/presentation/widgets/search_widget.dart';

@RoutePage()
final class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

final class _SearchPageState extends ConsumerState<SearchPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(searchNotifierProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchNotifierProvider);
    final notifier = ref.read(searchNotifierProvider.notifier);

    return StateBuilder(
      state: state,
      loading: ThemeLoadingWidget(),
      success: SearchWidget(
        departureAddress: state.departureAddress?.street,
        returnAddress: state.returnAddress?.street,
        departureTime: state.departureTime,
        returnTime: state.returnTime,
        onDepartureAddressSelect: () => _onDepartureAddressSelect(notifier),
        onReturnAddressSelect: () => _onReturnAddressSelect(notifier),
        onDepartureTimeSelect: () => _onDepartureTimeSelect(notifier),
        onReturnTimeSelect: () => _onReturnTimeSelect(notifier),
        onButtonPressed: () => _onButtonPressed(state),
      ),
      error: ThemeErrorWidget(),
    );
  }

  Future<void> _onDepartureAddressSelect(SearchNotifier notifier) async {
    final departureAddress = await context.router.push<AddressEntity>(AddressRoute());

    if (departureAddress != null) {
      notifier.updateDepartureAddress(departureAddress);
    }
  }

  Future<void> _onReturnAddressSelect(SearchNotifier notifier) async {
    final returnAddress = await context.router.push<AddressEntity>(AddressRoute());

    if (returnAddress != null) {
      notifier.updateReturnAddress(returnAddress);
    }
  }

  Future<void> _onDepartureTimeSelect(SearchNotifier notifier) async {
    final departureTime = await context.router.push<String>(TimeRoute());

    if (departureTime != null) {
      notifier.updateDepartureTime(departureTime);
    }
  }

  Future<void> _onReturnTimeSelect(SearchNotifier notifier) async {
    final returnTime = await context.router.push<String>(TimeRoute());

    if (returnTime != null) {
      notifier.updateReturnTime(returnTime);
    }
  }

  Future<void> _onButtonPressed(SearchState state) async {
    final departureAddress = state.departureAddress;
    final returnAddress = state.departureAddress;
    final departureTime = state.departureTime;
    final returnTime = state.returnTime;

    final isValid = departureAddress != null &&
        returnAddress != null &&
        departureTime != null &&
        returnTime != null;

    if (isValid) {
      final search = SearchModel(
        departureAddress: departureAddress as AddressModel,
        returnAddress: returnAddress as AddressModel,
        departureTime: departureTime,
        returnTime: returnTime,
      );

      context.router.push(BusRoute(search: search));
    }
  }
}
