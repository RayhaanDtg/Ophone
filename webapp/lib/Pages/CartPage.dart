import 'package:flutter/material.dart';
import 'package:webapp/Components/Cart/Cart.dart';
import 'package:webapp/Components/DrawerHome.dart';
import 'package:webapp/Components/Footer.dart';
import 'package:webapp/Components/Navbar/NavBar.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(),
      drawer: DrawerHome(),
      body: SafeArea(
          child: ListView(children: [
        SizedBox(height: 25.0),
        Container(
          height: 50.0,
          color: Colors.amberAccent.shade100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                  child: Text(
                    'Shopping Cart',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Column(
          children: [
            const Cart(),
          ],
        ),
        SizedBox(height: 40.0),
        Footer()
      ])),
    );
  }
}
