import 'package:flutter/material.dart';
import 'package:food_delivery/screens/drawer/bottom_nav.dart';
import 'package:food_delivery/screens/home/home_screen.dart';

import '../../../utilities/color_schema.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Column(
        children: [
          const SizedBox(
            height: 320,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Form(
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "you@example.com", labelText: "E-mail Address"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Form(
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: "your password",
                  labelText: "Password",
                ),
                autofocus: false,
                obscureText: true,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: TextButton(
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 16, color: deepOrange800),
                ),
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: deepOrange800,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 180,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return BottomNavPage();
                  },
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 25,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: deepOrange800,
              ),
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
