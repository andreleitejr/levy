import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/core/router/router.dart';
import 'package:levy/features/home/home.dart';
import 'package:levy_core/core.dart';
import 'package:levy_map/map.dart';
import 'package:levy_reservation/reservation.dart';
import 'package:levy_shared_entities/entities.dart';
import 'package:levy_theme/core/theme/theme.dart';
import 'package:levy_user/user.dart';

@RoutePage()
final class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

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

    return ThemeStateBuilder(
      state: state,
      loading: HomeShimmer(),
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
        onViewMapButtonPressed: () {
          context.router.push(MapRoute(isTargetBus: true));
        },
        bus: notifier.getNextBus(),
        arrivalTime: _getArrivalTimeText(notifier.calculateTimeUntilNextBus()),
      );
    } else {
      return _buildHomeSearchWidget(state, notifier);
    }
  }

  String _getArrivalTimeText(Duration? duration) {
    if (duration == null) return '';

    if (duration.inHours > 0) {
      final unit = (duration.inHours == 1
          ? CommonsTranslation.time.hour
          : CommonsTranslation.time.hours).toLowerCase();
      return '${duration.inHours} $unit';
    } else {
      final unit = (duration.inMinutes == 1
          ? CommonsTranslation.time.minute
          : CommonsTranslation.time.minutes).toLowerCase();
      return '${duration.inMinutes} $unit';
    }
  }
  
  Widget _buildHomeSearchWidget(HomeState state, HomeNotifier notifier) {
    final router = context.router;
    return HomeSearchWidget(
      user: state.user,
      departureAddress: state.departureAddress?.street,
      returnAddress: state.returnAddress?.street,
      departureTime: state.departureTime,
      returnTime: state.returnTime,
      onNotificationButtonPressed: () => router.push(NotificationRoute()),
      onDepartureAddressSelect: () async {
        final departureAddress = await router.push<AddressEntity>(AddressRoute());

        if (departureAddress != null) {
          notifier.updateDepartureAddress(departureAddress);
        }
      },
      onReturnAddressSelect: () async {
        final returnAddress = await router.push<AddressEntity>(AddressRoute());

        if (returnAddress != null) {
          notifier.updateReturnAddress(returnAddress);
        }
      },
      onDepartureTimeSelect: () async {
        final departureTime = await router.push<String>(TimeRoute());

        if (departureTime != null) {
          notifier.updateDepartureTime(departureTime);
        }
      },
      onReturnTimeSelect: () async {
        final returnTime = await router.push<String>(TimeRoute());

        if (returnTime != null) {
          notifier.updateReturnTime(returnTime);
        }
      },
      onButtonPressed: () {
        if (notifier.isValidSearch(state)) {
          final search = SearchModel(
            departureAddress: state.departureAddress as AddressModel,
            returnAddress: state.returnAddress as AddressModel,
            // TODO: Remove "!"
            departureTime: state.departureTime!,
            returnTime: state.returnTime!,
          );
          router.push(BusRoute(search: search));
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
