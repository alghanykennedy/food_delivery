import 'package:flutter/material.dart';
import 'package:food_delivery/screens/checkout/payment_screen.dart';
import 'package:food_delivery/screens/drawer/bottom_nav.dart';
import 'package:food_delivery/screens/home/home_screen.dart';
import 'package:food_delivery/utilities/color_schema.dart';

class OrderEmpty extends StatelessWidget {
  const OrderEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 200),
          Container(
            width: double.infinity,
            height: 90,
            // decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage('assets/image/icons/Group.png'))),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "No orders yet",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              horizontal: 55,
              vertical: 20,
            ),
            child: Text(
              "Hit the orange button down below to Create an Order",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
          Spacer(),
          SizedBox(
            height: 180,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomeScreen()));
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
                "Start ordering",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
