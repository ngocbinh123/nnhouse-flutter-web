import 'package:flutter/material.dart';
import 'package:nnhouse_web/components/container_header.dart';
import 'package:nnhouse_web/data/product.dart';
import 'package:nnhouse_web/screens/home/home_bar.dart';
import 'package:nnhouse_web/screens/home/home_slider.dart';
import 'package:nnhouse_web/screens/home/products_container.dart';

class HomeBodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> womenProducts = [
      Product(name: "Nike Air Max Genome"),
      Product(name: "Nike Air Max Verona Valentine's Day"),
      Product(name: "Nike Air Force 1 Shadow"),
      Product(name: "Nike Court Vision Alta"),
      Product(name: "NikeCourt Legacy"),
      Product(name: "Nike Air Max Viva"),
      Product(name: "Nike Fontanka Edge"),
      Product(name: "Nike Air Max 96 II"),
      Product(name: "Nike Air Force 1 '07 Essential"),
      Product(name: "Nike Air Max 97 SE"),
      Product(name: "Nike Canyon"),
      Product(name: "Nike Air Rift")
    ];
    return Container(
        child: Column(
      children: [
        Header(),
        ContainerHeader(title: "Women"),
        SizedBox(
          height: 700.0,
          child: ProductsContainer(products: womenProducts),
        ),
        ContainerHeader(title: "Men"),
        SizedBox(
          height: 700.0,
          child: ProductsContainer(products: womenProducts),
        )
      ],
    ));
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [HomeSlider(), HomeBar()],
    );
  }
}
