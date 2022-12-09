import 'package:flutter/material.dart';
import 'package:webapp/Components/Cart/Cart.dart';
import 'package:webapp/Components/DrawerHome.dart';
import 'package:webapp/Components/Footer.dart';
import 'package:webapp/Components/Navbar/NavBar.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amberAccent.shade200.withOpacity(0.3),
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width * 0.35,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('1 x'),
                          Text('Samsung A71 '),
                          Text('\$299.99')
                        ]),
                    SizedBox(
                      height: 25.0,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('2 x'),
                          Text('Samsung S21 '),
                          Text('\$699.99')
                        ]),
                    SizedBox(
                      height: 25.0,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('1 x'),
                          Text('Samsung S22 Ultra '),
                          Text('\$899.99')
                        ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      Container(
        //height: MediaQuery.of(context).size.height * 0.20,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Subtotal',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$299.99',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                )
              ]),
              SizedBox(
                height: 15.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Delivery Fee',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$9.99',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                )
              ]),
              SizedBox(
                height: 15.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Total',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$399.99',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                )
              ]),
            ],
          ),
        ),
      )
    ]);
  }
}
