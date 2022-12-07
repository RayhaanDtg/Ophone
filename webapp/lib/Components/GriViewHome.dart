import 'package:flutter/material.dart';
import 'package:webapp/Components/ProductCard.dart';

import 'package:flutter_layout_grid/flutter_layout_grid.dart';

import 'package:sliver_tools/sliver_tools.dart';

class GridViewHome extends StatelessWidget {
  //final int length;
  const GridViewHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber.shade100,
      width: MediaQuery.of(context).size.width * 0.70,
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(5.0),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LayoutGrid(
            // set some flexible track sizes based on the crossAxisCount
            columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
            // set all the row sizes to auto (self-sizing height)
            rowSizes: getRowSize(),
            rowGap: 10, // equivalent to mainAxisSpacing
            columnGap: 10, // equivalent to crossAxisSpacing
            // note: there's no childAspectRatio
            children: [
              // render all the cards with *automatic child placement*
              for (var i = 0; i < 40; i++) ProductCard()
            ],
          )),
    );
  }

  List<TrackSize> getRowSize() {
    var iter = 40 ~/ 3;
    List<TrackSize> lst = [];
    for (var i = 0; i < iter; i++) {
      lst.add(auto);
    }
    return lst;
  }
}
