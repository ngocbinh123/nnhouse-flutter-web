import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:nnhouse_web/components/body_builder.dart';
import 'package:nnhouse_web/components/container_header.dart';
import 'package:nnhouse_web/components/footer.dart';
import 'package:nnhouse_web/components/product_container/products_container.dart';
import 'package:nnhouse_web/data/request_status.dart';
import 'package:nnhouse_web/viewmodel/home_vm.dart';
import 'package:provider/provider.dart';
import '../../constant.dart';
import 'components/app_bar_title.dart';
import 'components/banner_slider.dart';
import 'home_presenter.dart';

abstract class BaseHomeContentsState<T extends StatefulWidget>
    extends State<T> {
  var slider = BannerSlider();
  var bestPriceHeader = ContainerHeader(title: bestPrice);
  var menShoesHeader = ContainerHeader(title: menShoes);
  var womenShoesHeader = ContainerHeader(title: womenShoes);

  var presenter = HomePresenter();

  @override
  void initState() {
    super.initState();
    // SchedulerBinding.instance!.addPostFrameCallback(
    //     (_) => {Provider.of<HomeVM>(context, listen: false).getCategories()});
  }

  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: Duration(seconds: 1));
  }

  Consumer<HomeVM> buildBody() {
    return Consumer<HomeVM>(
      builder: (BuildContext ctx, HomeVM homeVM, Widget? child) {
        return CustomScrollView(slivers: buildContainerList(homeVM));
      },
    );
  }

  List<Widget> buildContainerList(HomeVM homeVM) {
    List<Widget> childs = [
      SliverToBoxAdapter(key: slider.uniqueKey, child: slider)
    ];
    homeVM.categories.forEach((category) {
      Widget header = SliverToBoxAdapter(
          key: bestPriceHeader.uniqueKey,
          child: ContainerHeader(title: category.name));
      childs.add(header);
      // Widget container = BodyBuilder(
      //     child: ProductsContainer(products: presenter.getBestSaleShoeList()),
      //     status: RequestStatus.DOING_SLIVER);
      // childs.add(container);
    });
    return childs;
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
        BodyBuilder(
            child: ProductsContainer(products: presenter.getBestSaleShoeList()),
            status: RequestStatus.DOING_SLIVER),
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
