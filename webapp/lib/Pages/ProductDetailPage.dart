import 'package:flutter/material.dart';
import 'package:webapp/Components/ProductDetail/ProductDetailDetails.dart';
import 'package:webapp/Components/ProductDetail/ProductDetailImages.dart';

import '../Components/DrawerHome.dart';
import '../Components/DropDownCategory.dart';
import '../Components/Footer.dart';
import '../Components/GriViewHome.dart';
import '../Components/Navbar/NavBar.dart';

List<String> qty = ['0', '1', '2', '3'];

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  String dropdownValue = qty.first;
  @override
  Widget build(BuildContext build) {
    return Scaffold(
        appBar: const NavBar(),
        drawer: const DrawerHome(),
        body: SafeArea(
            child: Container(
          color: Colors.orangeAccent.shade100.withOpacity(0.2),
          child: ListView(
            children: [
              SizedBox(
                height: 25.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height * 0.5,
                //color: Colors.purpleAccent,
                padding: EdgeInsets.all(0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProductDetailImage(),
                    SizedBox(width: 150.0),
                    ProductDetailDetails(),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                          //color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(8.0)),
                      height: 300,
                      width: 550,
                      // padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: Colors.amberAccent,
                            child: Row(
                              children: [
                                Text(
                                  "Product Description",
                                  style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text('''
                          128 GB memory 
                          6GB RAM 
                          48 MP Triple camera''')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              Footer()
            ],
          ),
        )));
  }
}
