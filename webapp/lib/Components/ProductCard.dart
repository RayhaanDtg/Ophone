import 'package:flutter/material.dart';
import 'package:webapp/Pages/ProductDetailPage.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductDetailPage()),
        );
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.blueAccent,
        ),
        height: 300,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 200,
              height: 175,
              //color: Colors.greenAccent.withOpacity(0.8),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/sample samsung.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(8.0)),
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Brand'),
                SizedBox(
                  height: 5.0,
                ),
                Text('Title',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                SizedBox(
                  height: 5.0,
                ),
                Text('Price'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
