import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/sample samsung.jpg'),
                  fit: BoxFit.contain),
            ),
          ),
          title: Text('Samsung A71'),
          subtitle: Text('359.99 CAD'),
          trailing: Container(
            height: 25,
            width: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              onPressed: () {},
              child: Text('Remove'),
            ),
          ),
          isThreeLine: true,
        ),
      ),
    );
  }
}
