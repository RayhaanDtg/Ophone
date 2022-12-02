import 'package:flutter/material.dart';

class ProductDetailImage extends StatefulWidget {
  const ProductDetailImage({super.key});

  @override
  State<ProductDetailImage> createState() => _ProductDetailImageState();
}

class _ProductDetailImageState extends State<ProductDetailImage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
                padding: EdgeInsets.all(5.0),
                height: 115,
                width: 125,
                color: Colors.blueAccent),
            SizedBox(height: 7.5),
            Container(
              padding: EdgeInsets.all(5.0),
              height: 115,
              width: 125,
              color: Colors.blueAccent,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: 7.50),
            Container(
                padding: EdgeInsets.all(5.0),
                height: 115,
                width: 125,
                color: Colors.blueAccent)
          ],
        ),
        SizedBox(width: 15.0),
        Column(
          children: [
            Container(
                height: 365,
                width: 300,
                padding: EdgeInsets.all(5.0),
                color: Colors.blueAccent)
          ],
        ),
      ],
    );
  }
}
