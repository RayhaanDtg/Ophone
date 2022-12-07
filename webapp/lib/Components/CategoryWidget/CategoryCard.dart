import 'package:flutter/material.dart';
import 'package:webapp/Pages/ProductListPage.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({
    required this.imageName,
    super.key,
    required this.name,
  });
  final String name;
  final String imageName;
  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductListPage()),
        );
      },
      child: Column(
        children: [
          Material(
            borderRadius: BorderRadius.circular(8.0),
            elevation: 20.0,
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imageName), fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(8.0)),
              height: 300,
              width: 250,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            widget.name,
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
