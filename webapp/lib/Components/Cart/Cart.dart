import 'package:sliver_tools/sliver_tools.dart';
import 'package:flutter/material.dart';
import 'package:webapp/Components/Cart/CartItem.dart';

class Cart extends StatelessWidget {
  const Cart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber.shade100,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.50,
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(5.0),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return CartItem();
        },
      ),
    );
  }
}
