import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/core/theme/theme_images.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/commons/widgets/theme_icon_widget.dart';
import 'package:levy/features/commons/widgets/theme_loading_page.dart';
import 'package:levy/features/home/presentation/notifiers/home_notifier.dart';
import 'package:levy/features/home/presentation/providers/home_notifier_provider.dart';
import 'package:levy/features/home/presentation/states/home_state.dart';
import 'package:levy/features/home/presentation/widgets/home_reservation_info_widget.dart';
import 'package:levy/features/home/presentation/widgets/home_search_widget.dart';
import 'package:levy/features/map/presentation/pages/map_page.dart';
import 'package:levy/features/reservation/presentation/pages/reservation_page.dart';
import 'package:levy/features/search/data/models/search_model.dart';

@RoutePage()
final class HomePage extends ConsumerStatefulWidget {
  const HomePage({
    super.key,
    this.initialIndex = 0,
  });

  final int initialIndex;

  @override
  ConsumerState<HomePage> createState() => _SearchPageState();
}

final class _SearchPageState extends ConsumerState<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ReservationPage(),
    const MapPage(),
    Center(child: Text('Profile Page')),
  ];

  void _onBottomNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    _selectedIndex = widget.initialIndex;

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
      success: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            _buildHomeWidget(
              state: state,
              notifier: notifier,
            ),
            ..._pages,
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          enableFeedback: true,
          onTap: _onBottomNavItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: ThemeIconWidget(icon: ThemeIcons.home),
              activeIcon: ThemeIconWidget(
                icon: ThemeIcons.home,
                color: ThemeColors.primary,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ThemeIconWidget(icon: ThemeIcons.ticket),
              activeIcon: ThemeIconWidget(
                icon: ThemeIcons.ticket,
                color: ThemeColors.primary,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: ThemeIconWidget(icon: ThemeIcons.map),
              activeIcon: ThemeIconWidget(
                icon: ThemeIcons.map,
                color: ThemeColors.primary,
              ),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundImage:
                    AssetImage(ThemeImages.getImageByString(state.user.image)),
                radius: 18,
              ),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
        ),
      ),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }

  Widget _buildHomeWidget({
    required HomeState state,
    required HomeNotifier notifier,
  }) {
    final reservation = state.reservation;

    if (reservation != null) {
      return HomeReservationInfoWidget(
        user: state.user,
        reservation: reservation,
        onNotificationButtonPressed: () =>
            context.router.push(NotificationRoute()),
      );
    } else {
      return HomeSearchWidget(
        user: state.user,
        departureAddress: state.departureAddress?.street,
        returnAddress: state.returnAddress?.street,
        departureTime: state.departureTime,
        returnTime: state.returnTime,
        onNotificationButtonPressed: () => context.router.push(NotificationRoute()),
        onDepartureAddressSelect: () => _onDepartureAddressSelect(notifier),
        onReturnAddressSelect: () => _onReturnAddressSelect(notifier),
        onDepartureTimeSelect: () => _onDepartureTimeSelect(notifier),
        onReturnTimeSelect: () => _onReturnTimeSelect(notifier),
        onButtonPressed: () => _onButtonPressed(state),
      );
    }
  }

  Future<void> _onDepartureAddressSelect(HomeNotifier notifier) async {
    final departureAddress = await context.router.push<AddressEntity>(AddressRoute());

    if (departureAddress != null) {
      notifier.updateDepartureAddress(departureAddress);
    }
  }

  Future<void> _onReturnAddressSelect(HomeNotifier notifier) async {
    final returnAddress = await context.router.push<AddressEntity>(AddressRoute());

    if (returnAddress != null) {
      notifier.updateReturnAddress(returnAddress);
    }
  }

  Future<void> _onDepartureTimeSelect(HomeNotifier notifier) async {
    final departureTime = await context.router.push<String>(TimeRoute());

    if (departureTime != null) {
      notifier.updateDepartureTime(departureTime);
    }
  }

  Future<void> _onReturnTimeSelect(HomeNotifier notifier) async {
    final returnTime = await context.router.push<String>(TimeRoute());

    if (returnTime != null) {
      notifier.updateReturnTime(returnTime);
    }
  }

  Future<void> _onButtonPressed(HomeState state) async {
    final departureAddress = state.departureAddress;
    final returnAddress = state.returnAddress;
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
