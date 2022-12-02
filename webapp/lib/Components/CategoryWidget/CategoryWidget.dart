import 'package:flutter/material.dart';
import 'package:webapp/Components/CategoryWidget/CategoryCard.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent.shade100.withOpacity(0.5),
      padding: EdgeInsets.all(10.0),
      height: 1050,
      width: MediaQuery.of(context).size.width * 0.70,
      margin: EdgeInsets.only(bottom: 5.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CategoryCard(
                name: 'Samsung',
                imageName: 'images/samsung series.jpg',
              ),
              CategoryCard(name: 'Iphones', imageName: 'images/iphones.png')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryCard(name: 'Tablets', imageName: 'images/iphones.png')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CategoryCard(
                  name: 'Bluetooth', imageName: 'images/bluetooth.jpg'),
              CategoryCard(
                  name: 'Car holders', imageName: 'images/carholder.jpg')
            ],
          ),
        ],
      ),
    );
  }
}
