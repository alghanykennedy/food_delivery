import 'package:flutter/material.dart';
import 'package:food_delivery/utilities/color_schema.dart';

class ItemsEmpty extends StatelessWidget {
  const ItemsEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 90,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage('assets/image/icons/feather_search.png'))),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Item not found",
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
              "Try searching the item with a different keyword.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
