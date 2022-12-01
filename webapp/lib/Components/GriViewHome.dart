import 'package:flutter/material.dart';
import 'package:webapp/Components/ProductCard.dart';

import 'package:sliver_tools/sliver_tools.dart';

class GridViewHome extends StatelessWidget {
  const GridViewHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.70,
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(5.0),
      child: Scrollbar(
          thumbVisibility: true,
          child: ListView.separated(
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 10.0),
            itemBuilder: (BuildContext context, int index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [ProductCard(), ProductCard(), ProductCard()],
              );
            },
          )
          // child: CustomScrollView(slivers: [
          //   MultiSliver(
          //     // defaults to false
          //     pushPinnedChildren: true,
          //     children: <Widget>[
          //       SliverPinnedHeader(
          //           child: Container(
          //               color: Colors.yellow,
          //               height: 100,
          //               child: Center(
          //                 child: Text(
          //                   "I am a Pinned Header",
          //                   style: TextStyle(fontSize: 30),
          //                 ),
          //               ))),
          //       SliverList(
          //         delegate: SliverChildBuilderDelegate(
          //           (BuildContext context, int index) {
          //             return Container(
          //                 color: Colors.cyanAccent,
          //                 height: 500,
          //                 child: Padding(
          //                     padding: const EdgeInsets.all(5.0),
          //                     child: Row(
          //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                       children: [ProductCard(), ProductCard()],
          //                     )));
          //           },
          //           // 40 list items
          //           childCount: 10,
          //         ),
          //       ),
          //     ],
          //   ),
          // ]
          // ),
          ),
    );
  }
}
