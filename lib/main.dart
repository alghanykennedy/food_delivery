import 'package:flutter/material.dart';
import 'package:food_delivery/screens/checkout/payment_screen.dart';
import 'package:food_delivery/screens/drawer/bottom_nav.dart';
import 'package:food_delivery/screens/home/home_screen.dart';
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
      home: SplashScreen(),
    );
  }
}
