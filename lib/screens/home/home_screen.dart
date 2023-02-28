import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery/screens/loginsignup/loginsignup_screen.dart';
import 'package:food_delivery/screens/order/order_screen.dart';
import 'package:food_delivery/utilities/color_schema.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:food_delivery/widget/card_widget.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  toggleMenu([bool end = false]) {
    if (!end) {
      final state = _sideMenuKey.currentState!;
      if (state.isOpened) {
        state.closeSideMenu();
      } else {
        state.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
        radius: BorderRadius.circular(30),
        key: _sideMenuKey,
        menu: buildMenu(),
        background: const Color(0xFFFA4A0C),
        type: SideMenuType.shrinkNSlide,
        onChange: (isOpened) {
          setState(() => isOpened = isOpened);
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: background,
            elevation: 0.0,
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () => toggleMenu(),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OrderScreen()));
                    },
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.grey[400],
                    )),
              )
            ],
          ),
          body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delicious \nfood for you",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                //To add some elevation & border radius to text field need to wrap in Material
                Material(
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(30.0),
                  child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          color: Colors.black,
                        ),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                DefaultTabController(
                  length: 4,
                  child: Expanded(
                    child: Column(
                      children: [
                        TabBar(
                          indicatorColor: deepOrange800,
                          labelColor: deepOrange800,
                          unselectedLabelColor: grey400,
                          labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          tabs: [
                            Tab(
                              text: "Food",
                            ),
                            Tab(
                              text: "Drinks",
                            ),
                            Tab(
                              text: "Snacks",
                            ),
                            Tab(
                              text: "Sauce",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "see more",
                                style: TextStyle(
                                    fontSize: 16, color: deepOrange800),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            child:
                                TabBarView(clipBehavior: Clip.none, children: [
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                FoodCard(
                                    image: "assets/image/food1.png",
                                    text: "Vegie tomato mix"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCard(
                                    image: "assets/image/food1.png",
                                    text: "Vegie tomato mix"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCard(
                                    image: "assets/image/food1.png",
                                    text: "Vegie tomato mix"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCard(
                                    image: "assets/image/food1.png",
                                    text: "Vegie tomato mix"),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                FoodCard(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCard(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCard(
                                    image: "assets/image/food1.png",
                                    text: "Bubur ayam"),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                FoodCard(
                                    image: "assets/image/food1.png",
                                    text: "Nasi padang"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCard(
                                    image: "assets/image/food1.png",
                                    text: "Nasi padang"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCard(
                                    image: "assets/image/food1.png",
                                    text: "Nasi padang"),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                FoodCard(
                                    image: "assets/image/food1.png",
                                    text: "Es campur"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCard(
                                    image: "assets/image/food1.png",
                                    text: "Es campur"),
                                SizedBox(
                                  width: 20,
                                ),
                                FoodCard(
                                    image: "assets/image/food1.png",
                                    text: "Es campur"),
                              ],
                            ),
                          ),
                        ]))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              children: [
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.account_circle_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Profile",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.local_offer_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Orders",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.local_offer_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Offers and Promo",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.local_offer_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Privacy Policy",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                dividerListTile(),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.local_offer_outlined,
                      size: 20.0, color: Colors.white),
                  title: const Text("Security",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  textColor: Colors.white,
                  dense: true,
                ),
                const SizedBox(
                  height: 204,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginSignPage()));
                    },
                    child: Row(
                      children: [
                        const Text("Sign-out",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.arrow_forward,
                            size: 20.0, color: Colors.white)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget dividerListTile() {
    return const Divider(color: Color(0xFFF4F4F8), endIndent: 60, indent: 70);
  }
}
