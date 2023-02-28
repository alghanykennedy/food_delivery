import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:food_delivery/main.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_delivery/screens/checkout/chekcout_screen.dart';
import 'package:food_delivery/screens/checkout/payment_screen.dart';
import 'package:food_delivery/screens/drawer/bottom_nav.dart';
import 'package:food_delivery/utilities/color_schema.dart';
import 'package:food_delivery/widget/button_widget.dart';

class Cart_Screen extends StatelessWidget {
  List<MyModel> models = [
    MyModel(name: 'product1', image: 'assets/image/food1.png', price: 215.80),
    MyModel(name: 'product2', image: 'assets/image/food1.png', price: 415.30),
    MyModel(name: 'product3', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product3', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product3', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product3', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product3', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product3', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product3', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product3', image: 'assets/image/food1.png', price: 115.50),
    MyModel(name: 'product3', image: 'assets/image/food1.png', price: 115.50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: background,
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: background,
        elevation: 0.0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: models.length,
                itemBuilder: ((context, index) {
                  final model = models[index];
                  return Column(
                    children: [
                      Slidable(
                        // Specify a key if the Slidable is dismissible.
                        key: ValueKey(0),
                        // The end action pane is the one at the right or the bottom side.
                        endActionPane: ActionPane(
                          motion: ScrollMotion(),
                          children: [
                            CustomSlidableAction(
                                padding: EdgeInsets.only(left: 15),
                                onPressed: ((context) {}),
                                child: CircleAvatar(
                                  radius: 26,
                                  backgroundColor: deepOrange800,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite),
                                    color: Colors.white,
                                  ),
                                )),
                            CustomSlidableAction(
                                padding: EdgeInsets.only(right: 30),
                                onPressed: ((context) {}),
                                child: CircleAvatar(
                                  radius: 26,
                                  backgroundColor: deepOrange800,
                                )),
                          ],
                        ),
                        child: buildListTile(model),
                      ),
                    ],
                  );
                })),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return CheckoutScreen();
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
                "Add to cart",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }

  Widget buildListTile(MyModel model) => ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        leading: CircleAvatar(
          radius: 30,
          child: Image.asset(model.image),
        ),
        title: Row(
          children: [
            Column(
              children: [
                Text(
                  model.name,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  model.price.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
        trailing: Icon(Icons.add),
        onTap: () {},
      );
}

class MyModel {
  final String name;
  final String image;
  final double price;

  MyModel({
    required this.name,
    required this.image,
    required this.price,
  });
}
