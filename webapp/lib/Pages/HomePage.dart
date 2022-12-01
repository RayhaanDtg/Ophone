import 'package:flutter/material.dart';
import 'package:webapp/Components/CategoryWidget/CategoryWidget.dart';
import 'package:webapp/Components/DrawerHome.dart';
import 'package:webapp/Components/FeaturedCarousel.dart';
import 'package:webapp/Components/Navbar/NavBar.dart';
import 'package:webapp/Components/ProductCard.dart';
import 'package:webapp/Components/DropDownCategory.dart';

import '../Components/Footer.dart';
import '../Components/GriViewHome.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      drawer: const DrawerHome(),
      body: SafeArea(
        child: ListView(
          children: [
            FeaturedCarousel(),
            SizedBox(
              height: 30.0,
            ),
            Center(
                child: Text(
              'Featured Products',
              style: TextStyle(fontSize: 35.0),
            )),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 35,
              endIndent: 35,
              color: Colors.orangeAccent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.redAccent,
                  padding: EdgeInsets.all(10.0),
                  height: 350,
                  width: MediaQuery.of(context).size.width * 0.70,
                  child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                            width: 20.0,
                          ),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ProductCard(),
                          ],
                        );
                      }),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Center(
                child: Text(
              'Our Products',
              style: TextStyle(fontSize: 35.0),
            )),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 25,
              endIndent: 25,
              color: Colors.orangeAccent,
            ),
            SizedBox(height: 5.0),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryWidget(),
              ],
            ),
            const SizedBox(height: 50),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
