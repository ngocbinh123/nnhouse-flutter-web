import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nnhouse_web/data/product.dart';

import '../../constant.dart';

class ProductsContainerContentGrid extends StatelessWidget {
  final List<Product> products;

  const ProductsContainerContentGrid({required this.products});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    int count = min(screenWidth ~/ 275, 4);
    return SliverGrid(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: count),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return getProductWidget(context, products[index]);
        },
        childCount: products.length,
      ),
    );
  }

  List<Widget> getProductWidgetList(BuildContext context) {
    return products.map((p) => getProductWidget(context, p)).toList();
  }

  Widget getProductWidget(BuildContext context, Product p) {
    return Container(
      padding: EdgeInsets.all(space10),
      width: double.maxFinite,
      child: Card(
        elevation: 4,
        child: getBodyContainer(context, p),
      ),
    );
  }

  Widget getBodyContainer(BuildContext context, Product p) {
    var priceStyle = Theme.of(context)
        .textTheme
        .headline6!
        .copyWith(fontWeight: FontWeight.w600);
    var nameStyle = Theme.of(context).textTheme.headline6!;
    var borderCorner = Radius.circular(radius16);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: ClipRRect(
          borderRadius:
              BorderRadius.only(topLeft: borderCorner, topRight: borderCorner),
          child: Image.asset("assets/images/product_2.jpg"),
        )),
        Padding(
            padding:
                EdgeInsets.only(left: space20, top: space20, bottom: space10),
            child: Text(p.name, style: nameStyle)),
        Padding(
            padding: EdgeInsets.only(left: space20, bottom: space20),
            child: Text("4,999,000 vnd", style: priceStyle)),
      ],
    );
  }
}
