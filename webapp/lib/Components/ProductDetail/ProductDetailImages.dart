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
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/sample samsung.jpg"),
                      fit: BoxFit.contain)),
              height: 115,
              width: 125,
            ),
            SizedBox(height: 7.5),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/sample samsung.jpg"),
                      fit: BoxFit.contain)),
              padding: EdgeInsets.all(5.0),
              height: 115,
              width: 125,
            ),
            SizedBox(height: 7.50),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/sample samsung.jpg"),
                      fit: BoxFit.contain)),
              padding: EdgeInsets.all(5.0),
              height: 115,
              width: 125,
            )
          ],
        ),
        SizedBox(width: 15.0),
        Column(
          children: [
            Container(
                height: 365,
                width: 300,
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/sample samsung.jpg"),
                        fit: BoxFit.contain)))
          ],
        ),
      ],
    );
  }
}
