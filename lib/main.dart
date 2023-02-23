import 'package:flutter/material.dart';
import 'package:food_delivery/screens/cart/cart_screen.dart';
import 'package:food_delivery/screens/checkout/chekcout_screen.dart';
import 'package:food_delivery/screens/home/home_screen.dart';
import 'package:food_delivery/screens/history/history_empty.dart';
import 'package:food_delivery/screens/history/history_screen.dart';
import 'package:food_delivery/screens/items/items_screen.dart';
import 'package:food_delivery/screens/nointernet/no_internet_screen.dart';
import 'package:food_delivery/screens/order/order_screen.dart';
import 'package:food_delivery/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery',
      // theme: ThemeData(
      // ),
      home: HomeScreen(),
    );
  }
}
