import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:nnhouse_web/components/container_header.dart';
import 'package:nnhouse_web/components/footer.dart';
import 'package:nnhouse_web/screens/home/home_presenter.dart';
import 'package:nnhouse_web/screens/home/home_slider.dart';
import 'package:nnhouse_web/components/product_container/products_container.dart';

import '../../constant.dart';

class HomeContentMobile extends StatefulWidget {
  @override
  _HomeContentMobileState createState() => _HomeContentMobileState();
}

class _HomeContentMobileState extends State<HomeContentMobile> {
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
          leading: Icon(Icons.menu),
          title: Text(appName,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white)),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: space20),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.more_vert),
                )),
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
              child: kIsWeb ? Footer() : Container(),
            ),
          ],
        ));
  }
}
