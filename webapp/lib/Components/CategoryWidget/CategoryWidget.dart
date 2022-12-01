import 'package:flutter/material.dart';
import 'package:webapp/Components/CategoryWidget/CategoryCard.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      padding: EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height * 1.1,
      width: MediaQuery.of(context).size.width * 0.70,
      margin: EdgeInsets.only(bottom: 5.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CategoryCard(name: 'Samsung'),
              CategoryCard(name: 'Iphones')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CategoryCard(name: 'tablets')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CategoryCard(name: 'Bluetooth'),
              CategoryCard(name: 'Car Holders')
            ],
          ),
        ],
      ),
    );
  }
}
