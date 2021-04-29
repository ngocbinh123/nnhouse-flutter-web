import 'package:flutter/material.dart';
import 'package:nnhouse_web/components/container_header.dart';
import 'package:nnhouse_web/components/footer.dart';
import 'package:nnhouse_web/components/product_container/products_container.dart';
import 'package:nnhouse_web/screens/home/home_presenter.dart';
import 'package:nnhouse_web/screens/home/home_slider.dart';

import '../../constant.dart';
import 'menu_item.dart';

class HomeContentWeb extends StatefulWidget {
  @override
  _HomeContentWebState createState() => _HomeContentWebState();
}

class _HomeContentWebState extends State<HomeContentWeb> {
  final headerKey = new GlobalKey();
  final bestPriceKey = new GlobalKey();
  final menShoesKey = new GlobalKey();
  final womenShoesKey = new GlobalKey();
  var presenter = HomePresenter();

  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            key: headerKey,
            children: [
              Image.asset("assets/images/logo.png",
                  height: 26, alignment: Alignment.center),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          actions: [
            MenuItem(title: bestPrice, press: () => scrollTo(bestPriceKey)),
            MenuItem(title: menShoes, press: () => scrollTo(menShoesKey)),
            MenuItem(title: womenShoes, press: () => scrollTo(womenShoesKey)),
            Padding(
              padding: EdgeInsets.only(right: space20),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
                color: Colors.white,
              ),
            )
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: HomeSlider(),
            ),
            SliverToBoxAdapter(
              key: bestPriceKey,
              child: ContainerHeader(title: bestPrice),
            ),
            ProductsContainer(products: presenter.getBestSaleShoeList()),
            SliverToBoxAdapter(
              key: menShoesKey,
              child: ContainerHeader(title: menShoes),
            ),
            ProductsContainer(products: presenter.getMenShoeList()),
            SliverToBoxAdapter(
              key: womenShoesKey,
              child: ContainerHeader(title: womenShoes),
            ),
            ProductsContainer(products: presenter.getWomenShoeList()),
            SliverToBoxAdapter(
              child: Footer(),
            ),
          ],
        ));
  }
}
