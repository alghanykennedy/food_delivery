import 'package:flutter/material.dart';
import 'package:food_delivery/screens/drawer/bottom_nav.dart';
import 'package:food_delivery/widget/food_card_widget.dart';

class MenuFoodScreen extends StatefulWidget {
  const MenuFoodScreen({Key? key}) : super(key: key);

  @override
  State<MenuFoodScreen> createState() => _MenuFoodScreenState();
}

class _MenuFoodScreenState extends State<MenuFoodScreen> {
  final foodList = [
    {'name': 'Veggoe Tomatto Mix', 'icon': 'assets/image/food1.png'},
    {'name': 'Egg and Cucumber..', 'icon': 'assets/image/food1.png'},
    {'name': 'Fried Chicken m.', 'icon': 'assets/image/food1.png'},
    {'name': 'Moi-moi and Ekpa', 'icon': 'assets/image/food1.png'},
    {'name': 'Bakpau', 'icon': 'assets/image/food1.png'},
    {'name': 'chuankie', 'icon': 'assets/image/food1.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return BottomNavPage();
                },
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.all(8),
          child: TextFormField(
            decoration:
                const InputDecoration(border: InputBorder.none, hintText: ""),
            // focusNode: FocusNode().,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 30,
              margin: const EdgeInsets.only(top: 30.0),
              child: const Center(
                child: Text(
                  "Found 6 Result",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 45.0,
                top: 120.0,
              ),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 50,
                children: [
                  ...foodList.map((e) {
                    return FoodCard(
                        title: e['name'] as String,
                        imageFood: e['icon'] as String);
                  }),
                  // FoodCard(
                  //   title: "Veggoe Tomatto Mix",
                  //   imageFood: 'assets/image/food1.png',
                  // ),
                  // FoodCard(
                  //   title: "Egg and Cucumber..",
                  //   imageFood: 'assets/image/food1.png',
                  // ),
                  // FoodCard(
                  //   title: "Fried Chicken m.",
                  //   imageFood: 'assets/image/food1.png',
                  // ),
                  // FoodCard(
                  //   title: "Moi-moi and Ekpa",
                  //   imageFood: 'assets/image/food1.png',
                  // ),
                  // FoodCard(
                  //   title: "Bakpau",
                  //   imageFood: 'assets/image/food1.png',
                  // ),
                  // FoodCard(
                  //   title: "chuankie",
                  //   imageFood: 'assets/image/food1.png',
                  // ),
                  // FoodCard(
                  //   title: "Veggoe\nTomatto Mix",
                  //   imageFood: 'assets/image/ic_food.png',
                  // ),
                  // FoodCard(
                  //   title: "Egg and\nCucumber..",
                  //   imageFood: 'assets/image/ic_food3.png',
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
