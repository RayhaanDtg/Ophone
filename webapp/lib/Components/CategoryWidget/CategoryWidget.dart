import 'package:flutter/material.dart';
import 'package:webapp/Components/CategoryWidget/CategoryCard.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent.withOpacity(0.8),
      padding: EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height * 1.1,
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
