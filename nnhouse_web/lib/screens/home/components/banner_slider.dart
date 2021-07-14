import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nnhouse_web/base/base_stateless_widget.dart';

class BannerSlider extends BaseStatelessWidget {
  final GlobalKey uniqueKey = GlobalKey(debugLabel: "______SLIDER______");

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: getSliders(),
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
        ));
  }

  List<Widget> getSliders() {
    List<String> ls = [
      "assets/images/slider_1.jpg",
      "assets/images/slider_2.jpg",
      "assets/images/slider_3.jpg",
      "assets/images/slider_4.jpg"
    ];

    return ls
        .map((e) => Container(
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(e), fit: BoxFit.cover)),
            ))
        .toList();
  }
}
