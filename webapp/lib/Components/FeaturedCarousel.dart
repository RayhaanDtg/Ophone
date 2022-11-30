import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FeaturedCarousel extends StatelessWidget {
  const FeaturedCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 4,
        itemBuilder: (context, index, _) {
          return Container(
            // height: 450,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(
                  color: Colors.white,
                )),
            child: Center(
                child: Text(index.toString(),
                    style: TextStyle(color: Colors.black, fontSize: 18))),
          );
        },
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.65,
          scrollDirection: Axis.horizontal,
          //viewportFraction: 0.7,
          //enlargeCenterPage: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          // reverse: false,
          //aspectRatio: 1.0,
        ));
  }
}
