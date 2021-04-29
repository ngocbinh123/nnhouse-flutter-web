import 'package:flutter/material.dart';
import 'package:nnhouse_web/components/product_container/product_container_content_grid.dart';
import 'package:nnhouse_web/components/product_container/product_container_content_line.dart';
import 'package:nnhouse_web/data/product.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProductsContainer extends StatelessWidget {
  final List<Product> products;
  const ProductsContainer({required this.products});

  @override
  Widget build(BuildContext context) {
    return ProductsContainerContentGrid(products: products,);
    // return ScreenTypeLayout(
    //   desktop: Container(),
    //   mobile: Container(),
    // );
  }
}
