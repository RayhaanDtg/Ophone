import 'package:flutter/material.dart';
import 'package:webapp/Components/ProductCard.dart';

import 'package:sliver_tools/sliver_tools.dart';

class GridViewHome extends StatelessWidget {
  const GridViewHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.amber.shade100,
        //height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.70,
        margin: EdgeInsets.only(bottom: 10.0),
        padding: EdgeInsets.all(5.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: 20,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 4 / 3,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return ProductCard();
            },
          ),
        ),
      ),
    );
  }
}
