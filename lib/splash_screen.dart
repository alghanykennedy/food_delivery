import 'package:flutter/material.dart';
import 'package:food_delivery/color_schema.dart';
import 'package:food_delivery/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepRed700,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 60,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/image/logormv.png'),
              backgroundColor: Colors.white,
              radius: 40,
              // backgroundColor: Colors.white,
              // radius: 35,
              // child: CircleAvatar(
              //   backgroundImage: AssetImage('assets/image/logo1.png'),
              //   radius: 25,
              // ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Food For Everyone',
            style: TextStyle(
              fontSize: 80,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/face2.png'),
                    fit: BoxFit.fitHeight)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 25,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: deepRed700),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
