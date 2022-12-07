import 'package:flutter/material.dart';
import 'package:webapp/Components/ProductCounter.dart';

List<String> qty = ['0', '1', '2', '3'];

class ProductDetailDetails extends StatefulWidget {
  const ProductDetailDetails({super.key});

  @override
  State<ProductDetailDetails> createState() => _ProductDetailDetailsState();
}

class _ProductDetailDetailsState extends State<ProductDetailDetails> {
  String dropdownValue = qty.first;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      child: Container(
        width: 250,
        height: 365,
        padding: EdgeInsets.all(5.0),
        //color: Colors.pinkAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Samsung A71 5G ",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      // color: Colors.black,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      // color: Colors.black,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      // color: Colors.black,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      // color: Colors.black,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      // color: Colors.black,
                      size: 15.0,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Column(
              children: [
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Price ",
                      style: TextStyle(
                          fontSize: 15.0, fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      width: 45.0,
                    ),
                    Text(
                      "250 CAD",
                      style: TextStyle(
                          fontSize: 15.0, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),

                SizedBox(height: 15.0),
                //SizedBox(height: 10.0),
                const ProductCounter(),
                // Row(
                //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       "Quantity",
                //       style: TextStyle(
                //           fontSize: 15.0, fontStyle: FontStyle.italic),
                //     ),
                //     SizedBox(
                //       width: 45.0,
                //     ),
                //     DropdownButton<String>(
                //       value: dropdownValue,
                //       elevation: 10,
                //       style: const TextStyle(color: Colors.black),
                //       onChanged: (String? value) {
                //         // This is called when the user selects an item.
                //       },
                //       items: qty.map<DropdownMenuItem<String>>((String value) {
                //         return DropdownMenuItem<String>(
                //           value: value,
                //           child: Text(value),
                //         );
                //       }).toList(),
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: Text('Add to cart')),
            // SizedBox(
            //   height: 10.0,
            // )
          ],
        ),
      ),
    );
  }
}
