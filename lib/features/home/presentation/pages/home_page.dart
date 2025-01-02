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
import 'package:levy/features/home/presentation/notifiers/home_notifier.dart';
import 'package:levy/features/home/presentation/providers/home_notifier_provider.dart';
import 'package:levy/features/home/presentation/shimmers/home_reservation_shimmer.dart';
import 'package:levy/features/home/presentation/shimmers/home_search_shimmer.dart';
import 'package:levy/features/home/presentation/states/home_state.dart';
import 'package:levy/features/home/presentation/widgets/home_reservation_widget.dart';
import 'package:levy/features/home/presentation/widgets/home_search_widget.dart';
import 'package:levy/features/map/presentation/pages/map_page.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/presentation/pages/reservation_page.dart';
import 'package:levy/features/search/data/models/search_model.dart';
import 'package:levy/features/user/presentation/pages/user_page.dart';

@RoutePage()
final class HomePage extends ConsumerStatefulWidget {
  const HomePage({
    super.key,
  });
  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

final class _HomePageState extends ConsumerState<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ReservationPage(),
    const MapPage(),
    const UserPage(),
  ];

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
      loading: _buildLoadingWidget(state.reservation),
      success: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            _buildHomeWidget(state: state, notifier: notifier),
            ..._pages,
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: _buildBottomNavigationBarItems(state),
        ),
      ),
      error: ThemeErrorWidget(message: state.errorMessage),
    );
  }

  List<BottomNavigationBarItem> _buildBottomNavigationBarItems(
      HomeState state) {
    return [
      _buildBottomNavItem(ThemeIcons.home),
      _buildBottomNavItem(ThemeIcons.ticket),
      _buildBottomNavItem(ThemeIcons.map),
      BottomNavigationBarItem(
        icon: CircleAvatar(
          backgroundImage: AssetImage(_getUserImage(state)),
          radius: 18,
        ),
        label: '',
      ),
    ];
  }

  BottomNavigationBarItem _buildBottomNavItem(String icon) {
    return BottomNavigationBarItem(
      icon: ThemeIconWidget(icon: icon),
      activeIcon: ThemeIconWidget(
        icon: icon,
        color: ThemeColors.primary,
      ),
      label: '',
    );
  }

  Widget _buildLoadingWidget(ReservationEntity? reservation) {
    if (reservation != null) {
      return HomeReservationShimmer();
    } else {
      return HomeSearchShimmer();
    }
  }

  Widget _buildHomeWidget({
    required HomeState state,
    required HomeNotifier notifier,
  }) {
    final user = state.user;
    final reservation = state.reservation;

    if (user != null && reservation != null) {
      return HomeReservationWidget(
        user: user,
        reservation: reservation,
        onNotificationButtonPressed: () => context.router.push(NotificationRoute()),
        bus: notifier.getNextBus(),
        arrivalTime: notifier.calculateArrivalTime(),
      );
    } else {
      return _buildHomeSearchWidget(state, notifier);
    }
  }

  Widget _buildHomeSearchWidget(HomeState state, HomeNotifier notifier) {
    return HomeSearchWidget(
      user: state.user,
      departureAddress: state.departureAddress?.street,
      returnAddress: state.returnAddress?.street,
      departureTime: state.departureTime,
      returnTime: state.returnTime,
      onNotificationButtonPressed: () => context.router.push(NotificationRoute()),
      onDepartureAddressSelect: () async {
        final departureAddress =
            await context.router.push<AddressEntity>(AddressRoute());
        if (departureAddress != null) {
          notifier.updateDepartureAddress(departureAddress);
        }
      },
      onReturnAddressSelect: () async {
        final returnAddress =
            await context.router.push<AddressEntity>(AddressRoute());
        if (returnAddress != null) {
          notifier.updateReturnAddress(returnAddress);
        }
      },
      onDepartureTimeSelect: () async {
        final departureTime = await context.router.push<String>(TimeRoute());
        if (departureTime != null) {
          notifier.updateDepartureTime(departureTime);
        }
      },
      onReturnTimeSelect: () async {
        final returnTime = await context.router.push<String>(TimeRoute());
        if (returnTime != null) {
          notifier.updateReturnTime(returnTime);
        }
      },
      onButtonPressed: () {
        if (notifier.isValidSearch(state)) {
          final search = SearchModel(
            departureAddress: state.departureAddress as AddressModel,
            returnAddress: state.returnAddress as AddressModel,
            departureTime: state.departureTime!,
            returnTime: state.returnTime!,
          );
          context.router.push(BusRoute(search: search));
        }
      },
    );
  }

  String _getUserImage(HomeState state) {
    final user = state.user;

    if (user != null) {
      return ThemeImages.getImageByString(user.image);
    }

    return ThemeImages.avatar;
  }
}
