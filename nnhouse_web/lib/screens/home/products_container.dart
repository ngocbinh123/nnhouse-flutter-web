import 'package:flutter/material.dart';
import 'package:nnhouse_web/constant.dart';
import 'package:nnhouse_web/data/product.dart';

class ProductsContainer extends StatelessWidget {
  final List<Product> products;
  const ProductsContainer({required this.products});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: space20,
      mainAxisSpacing: space40,
      children: getProductWidgetList(context),
    );
  }

  List<Widget> getProductWidgetList(BuildContext context) {
    return products.map((p) => getProductWidget(context, p)).toList();
  }

  Widget getProductWidget(BuildContext context, Product p) {
    var priceStyle = Theme.of(context)
        .textTheme
        .headline5!
        .copyWith(color: Colors.black, fontWeight: FontWeight.bold);
    var nameStyle =
        Theme.of(context).textTheme.headline6!.copyWith(color: kPrimaryColor);

    return Column(
      children: [
        Image.asset("assets/images/product_2.jpg"),
        Text(
          "4,999,000 VND",
          style: priceStyle,
        ),
        Text(
          p.name,
          style: nameStyle,
        )
      ],
    );
  }
}
