import 'package:flutter/material.dart';

class ProductCounter extends StatefulWidget {
  const ProductCounter({super.key});

  @override
  State<ProductCounter> createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle)),
        Text('1'),
        IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
      ],
    );
  }
}
