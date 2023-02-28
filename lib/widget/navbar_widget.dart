// import 'package:flutter/material.dart';
// import 'package:food_delivery/screens/drawer/shrink_drawer_screen.dart';
// import 'package:food_delivery/screens/favorite/favorite_screen.dart';
// import 'package:food_delivery/screens/history/history_screen.dart';
// import 'package:food_delivery/screens/profile/profile_screen.dart';
// import 'package:food_delivery/utilities/color_schema.dart';

// class BottomNav extends StatefulWidget {
//   const BottomNav({Key? key}) : super(key: key);

//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//   int index = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: index,
//         children: const [
//           MyHomePage(),
//           FavoriteScreen(),
//           ProfileScreen(),
//           HistoryScreen()
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: index,
//         onTap: (int newindex) {
//           setState(() {
//             index = newindex;
//           });
//         },
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         selectedItemColor: deepOrange800,
//         unselectedItemColor: grey400,
//         items: const [
//           BottomNavigationBarItem(
//             label: "Home",
//             icon: Icon(Icons.home),
//           ),
//           BottomNavigationBarItem(
//             label: "Favorite",
//             icon: Icon(Icons.favorite),
//           ),
//           BottomNavigationBarItem(
//             label: "Profile",
//             icon: Icon(Icons.person),
//           ),
//           BottomNavigationBarItem(
//             label: "History",
//             icon: Icon(Icons.history),
//           ),
//         ],
//       ),
//     );
//   }
// }
