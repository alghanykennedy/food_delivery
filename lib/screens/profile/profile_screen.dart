import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home/home_screen.dart';
import 'package:food_delivery/screens/profile/profile_change_screen.dart';
import 'package:food_delivery/utilities/color_schema.dart';
import 'package:food_delivery/widget/button_widget.dart';
import 'package:food_delivery/widget/font_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Widget spacingBoxSized() {
    return const SizedBox(
      height: 20,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF5F5F8),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                          },
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "My Profile",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Personal details",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            width: 80,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return ProfileChangeScreen();
                                    },
                                  ),
                                );
                              },
                              child: const Text(
                                "change",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFFFA4A0C)),
                              ))
                        ],
                      ),
                      Container(
                        height: 175,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                // child: Image.asset('assets/img/img_profile.png',
                                //     height: 90, width: 80),
                              ),
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
                                      padding: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  width: 0.5,
                                                  color: Colors.black26))),
                                      child: const Text(
                                        "Dosamarvis@gmail.com",
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 15),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    Container(
                                      width: 165,
                                      alignment: Alignment.topLeft,
                                      padding: const EdgeInsets.all(5),
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  width: 0.5,
                                                  color: Colors.black26))),
                                      child: const Text(
                                        "+234 9011039271",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 15),
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
                                            fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      spacingBoxSized(),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: SizedBox(
                                    width: 100,
                                    child: FontWidget(
                                        text: "Orders", sizeFont: 16)),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_ios))
                            ],
                          ),
                        ),
                      ),
                      spacingBoxSized(),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: SizedBox(
                                    width: 150,
                                    child: FontWidget(
                                        text: "Pending Reviews", sizeFont: 16)),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_ios))
                            ],
                          ),
                        ),
                      ),
                      spacingBoxSized(),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: SizedBox(
                                    width: 100,
                                    child:
                                        FontWidget(text: "Faq", sizeFont: 16)),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_ios))
                            ],
                          ),
                        ),
                      ),
                      spacingBoxSized(),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: SizedBox(
                                    width: 100,
                                    child:
                                        FontWidget(text: "Help", sizeFont: 16)),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward_ios))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return HomeScreen();
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
                            "Update",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
