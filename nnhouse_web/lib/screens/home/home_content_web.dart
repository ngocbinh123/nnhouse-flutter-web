import 'package:flutter/material.dart';
import 'package:nnhouse_web/screens/home/base_home_content_state.dart';

import '../../constant.dart';
import 'components/menu_item.dart';

class HomeContentWeb extends StatefulWidget {
  @override
  _HomeContentWebState createState() => _HomeContentWebState();
}

class _HomeContentWebState extends BaseHomeContentsState<HomeContentWeb> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: getAppBarTitle(),
          actions: [
            MenuItem(
                title: bestPrice,
                press: () => scrollTo(bestPriceHeader.uniqueKey)),
            MenuItem(
                title: menShoes,
                press: () => scrollTo(menShoesHeader.uniqueKey)),
            MenuItem(
                title: womenShoes,
                press: () => scrollTo(womenShoesHeader.uniqueKey)),
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
        body: getBody());
  }
}
