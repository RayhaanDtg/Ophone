import 'package:flutter/material.dart';
import 'package:webapp/Components/Cart/Cart.dart';
import 'package:webapp/Components/Checkout/BillingDetailsWidget.dart';
import 'package:webapp/Components/Checkout/OrderSummary.dart';
import 'package:webapp/Components/DrawerHome.dart';
import 'package:webapp/Components/Footer.dart';
import 'package:webapp/Components/Navbar/NavBar.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      drawer: const DrawerHome(),
      body: SafeArea(
          child: ListView(children: [
        const SizedBox(height: 25.0),
        Container(
            color: Colors.amberAccent.shade100,
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Checkout and Place order',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ],
            )),
        const SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BillingDetailsWidget(),
            Material(
              elevation: 10.0,
              child: Column(
                children: [
                  const Text('Order Summary',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.w300)),
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.height * 0.35,
                          height: MediaQuery.of(context).size.height * 0.65,
                          child: const OrderSummary()),
                    ],
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Place Order')),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 70,
        ),
        const Footer()
      ])),
    );
  }
}
