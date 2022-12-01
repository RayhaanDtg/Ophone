import 'package:flutter/material.dart';

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
            child: ListView(
          children: [
            SizedBox(
              height: 25.0,
            ),
            Container(
                height: MediaQuery.of(context).size.height * 1,
                //color: Colors.purpleAccent,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(5.0),
                                height: 150,
                                width: 150,
                                color: Colors.blueAccent),
                            SizedBox(height: 10.0),
                            Container(
                                padding: EdgeInsets.all(5.0),
                                height: 150,
                                width: 150,
                                color: Colors.blueAccent),
                            SizedBox(height: 10.0),
                            Container(
                                padding: EdgeInsets.all(5.0),
                                height: 150,
                                width: 150,
                                color: Colors.blueAccent)
                          ],
                        ),
                        SizedBox(width: 15.0),
                        Column(
                          children: [
                            Container(
                                height: 475,
                                width: 300,
                                padding: EdgeInsets.all(5.0),
                                color: Colors.blueAccent)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 50.0),
                    Container(
                      height: 475,
                      padding: EdgeInsets.all(5.0),
                      color: Colors.pinkAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Product Title",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20.0),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Price ",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Text(
                                    "250 CAD",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ],
                              ),

                              SizedBox(height: 15.0),
                              //SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                  Icon(Icons.star),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Quantity",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontStyle: FontStyle.italic),
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  DropdownButton<String>(
                                    value: dropdownValue,
                                    elevation: 10,
                                    style: const TextStyle(color: Colors.black),
                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                    },
                                    items: qty.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Footer()
          ],
        )));
  }
}
