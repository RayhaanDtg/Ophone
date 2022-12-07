import 'package:flutter/material.dart';
import 'package:webapp/Components/ProductCounter.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      width: MediaQuery.of(context).size.width * 0.75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/sample samsung.jpg'),
                  fit: BoxFit.contain),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Samsung A71'),
              SizedBox(
                height: 5.0,
              ),
              Text('\$399.99')
            ],
          ),
          ProductCounter(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                size: 20.0,
              ))
        ],
      ),
    );
  }
}
