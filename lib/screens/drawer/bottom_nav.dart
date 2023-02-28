import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/screens/cart/cart_screen.dart';
import 'package:food_delivery/screens/home/home_screen.dart';
import 'package:food_delivery/screens/loginsignup/login/login_screen.dart';
import 'package:food_delivery/screens/loginsignup/loginsignup_screen.dart';
import 'package:food_delivery/screens/order/order_screen.dart';
import 'package:food_delivery/screens/profile/profile_screen.dart';
import 'package:food_delivery/screens/splash/splash_screen.dart';
import 'package:food_delivery/utilities/color_schema.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      HomeScreen(),
      ProfileScreen(),
      Container(
        child: Text('Page3'),
      ),
      Container(
        child: Text('Page4'),
      ),
    ];
    return Scaffold(
        body: widgets[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: deepOrange800,
          unselectedItemColor: grey400,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Favorite",
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: "History",
              icon: Icon(Icons.history),
            ),
          ],
        ));
  }
}
