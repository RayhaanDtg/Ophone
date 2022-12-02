import 'package:flutter/material.dart';

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
    return Column(
      children: [
        Material(
          elevation: 20.0,
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imageName), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(8.0)),
            height: 250,
            width: 200,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(widget.name)
      ],
    );
  }
}
