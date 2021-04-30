import 'package:flutter/cupertino.dart';
import 'package:nnhouse_web/components/container_header.dart';
import 'package:nnhouse_web/components/footer.dart';
import 'package:nnhouse_web/components/product_container/products_container.dart';

import '../../constant.dart';
import 'components/app_bar_title.dart';
import 'components/slider.dart';
import 'home_presenter.dart';

abstract class BaseHomeContentsState<T extends StatefulWidget>
    extends State<T> {
  var slider = Slider();
  var bestPriceHeader = ContainerHeader(title: bestPrice);
  var menShoesHeader = ContainerHeader(title: menShoes);
  var womenShoesHeader = ContainerHeader(title: womenShoes);

  var presenter = HomePresenter();

  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: Duration(seconds: 1));
  }

  Widget getBody() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          key: slider.uniqueKey,
          child: slider,
        ),
        SliverToBoxAdapter(
          key: bestPriceHeader.uniqueKey,
          child: bestPriceHeader,
        ),
        ProductsContainer(products: presenter.getBestSaleShoeList()),
        SliverToBoxAdapter(
          key: menShoesHeader.uniqueKey,
          child: menShoesHeader,
        ),
        ProductsContainer(products: presenter.getMenShoeList()),
        SliverToBoxAdapter(
          key: womenShoesHeader.uniqueKey,
          child: womenShoesHeader,
        ),
        ProductsContainer(products: presenter.getWomenShoeList()),
        SliverToBoxAdapter(
          child: Footer(),
        ),
        // Footer()
      ],
    );
  }

  Widget getAppBarTitle() {
    return AppBarTitle(press: () => {scrollTo(slider.uniqueKey)});
  }
}
