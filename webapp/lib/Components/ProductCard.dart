import 'package:flutter/material.dart';
import 'package:webapp/Pages/ProductDetailPage.dart';
import 'package:webapp/Pages/ProductListPage.dart';

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
      child: Material(
        borderRadius: BorderRadius.circular(8.0),
        elevation: 20,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
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
                      fit: BoxFit.contain),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Samsung'),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text('Samsung A71 5G',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text('399.99 CAD'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
