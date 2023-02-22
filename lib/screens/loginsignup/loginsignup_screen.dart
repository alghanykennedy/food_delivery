import 'package:flutter/material.dart';
import 'package:food_delivery/utilities/color_schema.dart';
import 'package:food_delivery/screens/loginsignup/login/login_screen.dart';
import 'package:food_delivery/screens/loginsignup/signup/signup_sceen.dart';

class LoginSignPage extends StatefulWidget {
  const LoginSignPage({super.key});

  @override
  State<LoginSignPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginSignPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            TabBarView(
              children: [
                LoginScreen(),
                SignUpScreen(),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  Image.asset(
                    'assets/image/logo1.png',
                  ),
                  Spacer(),
                  TabBar(
                    unselectedLabelColor: Colors.black,
                    labelStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    labelColor: Colors.black,
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 3.5, color: deepRed700),
                        insets: EdgeInsets.symmetric(horizontal: 50.0)),
                    tabs: [
                      Tab(
                        text: "Login",
                      ),
                      Tab(
                        text: "Sign-up",
                      )
                    ],
                  ),
                ],
              ),
              alignment: Alignment.center,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
