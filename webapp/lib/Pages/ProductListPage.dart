import 'package:flutter/material.dart';

import '../Components/DrawerHome.dart';
import '../Components/DropDownCategory.dart';
import '../Components/Footer.dart';
import '../Components/GriViewHome.dart';
import '../Components/Navbar/NavBar.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext build) {
    return Scaffold(
        appBar: const NavBar(),
        drawer: const DrawerHome(),
        body: SafeArea(
            child: ListView(
          children: [
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
                        'Phones',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 0, 20.0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Filter by'),
                        SizedBox(width: 30.0),
                        Text('Sort by')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [DropdownCategory()],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GridViewHome(),
              ],
            ),
            const SizedBox(height: 50),
            const Footer(),
          ],
        )));
  }
}
