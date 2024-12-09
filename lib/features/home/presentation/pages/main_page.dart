// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:levy/core/theme/theme_icons.dart';
// import 'package:levy/core/theme/theme_images.dart';
// import 'package:levy/features/commons/widgets/theme_icon_widget.dart';
// import 'package:levy/features/home/presentation/pages/home_page.dart';
// import 'package:levy/features/reservation/presentation/pages/reservation_page.dart';
//
// @RoutePage()
// final class MainPage extends ConsumerStatefulWidget {
//   const MainPage({super.key});
//
//   @override
//   ConsumerState<MainPage> createState() => _MainPageState();
// }
//
// final class _MainPageState extends ConsumerState<MainPage> {
//   int _selectedIndex = 0;
//
//   final List<Widget> _pages = [
//     const HomePage(),
//     const ReservationPage(),
//     const ReservationPage(),
//     const ReservationPage(),
//   ];
//
//   void _onBottomNavItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: _pages,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onBottomNavItemTapped,
//         items: const [
//           BottomNavigationBarItem(
//             icon: ThemeIconWidget(icon: ThemeIcons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: ThemeIconWidget(icon: ThemeIcons.home),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: ThemeIconWidget(icon: ThemeIcons.home),
//             label: 'Notifications',
//           ),
//           BottomNavigationBarItem(
//             icon: CircleAvatar(
//               backgroundImage: AssetImage(ThemeImages.getImageByString(user.image)),
//               radius: 24,
//             ),
//             label: 'Profile',
//           ),
//         ],
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//       ),
//     );
//   }
// }
