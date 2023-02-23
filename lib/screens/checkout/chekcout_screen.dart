import 'package:flutter/material.dart';
import 'package:food_delivery/utilities/color_schema.dart';

enum RadioButtonProfile { cardProfile, bankAccountProfile, paypalProfile }

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  RadioButtonProfile? _character = RadioButtonProfile.cardProfile;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: background,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row(
                //   children: [
                //     IconButton(
                //         padding: const EdgeInsets.only(left: 30, top: 20),
                //         onPressed: () {},
                //         icon: const Icon(Icons.arrow_back_ios)),
                //     const SizedBox(
                //       width: 100,
                //     ),
                //   ],
                // ),
                const SizedBox(height: 50),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('data'), Text('data2')],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Row(
                            children: [
                              // Container(
                              //   alignment: Alignment.topLeft,
                              //   child: Image.asset('assets/img/img_profile.png',
                              //       height: 60, width: 60),
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(left: 5),
                                      height: 20,
                                      child: const Text(
                                        "Marvis Ighedosa",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                    Container(
                                      width: 165,
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 8),
                                      child: const Text(
                                        "Dosamarvis@gmail.com",
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 13),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      height: 54,
                                      width: 180,
                                      child: const Text(
                                        "No 15 uti street off ovie palace road effurun delta state",
                                        overflow: TextOverflow.visible,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: const Text('data'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        height: 130,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            ListTile(
                              title: Container(
                                child: Row(
                                  children: [
                                    const Text(
                                      "Door delivery",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                              leading: Radio<RadioButtonProfile>(
                                value: RadioButtonProfile.cardProfile,
                                groupValue: _character,
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xFFFA4A0C)),
                                onChanged: (RadioButtonProfile? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                            ),
                            Divider(
                                color: Colors.black26,
                                indent: 80,
                                endIndent: 30),
                            ListTile(
                              title: Container(
                                child: Row(
                                  children: [
                                    const Text(
                                      "Pick up",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                              leading: Radio<RadioButtonProfile>(
                                value: RadioButtonProfile.paypalProfile,
                                groupValue: _character,
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xFFFA4A0C)),
                                onChanged: (RadioButtonProfile? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 40),
                    //   child: const InkWell(),
                    // )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
