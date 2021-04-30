import 'package:flutter/material.dart';
import 'package:nnhouse_web/res/colors.dart';
import 'package:nnhouse_web/screens/home/base_home_content_state.dart';

import '../../constant.dart';

class HomeContentMobile extends StatefulWidget {
  @override
  _HomeContentMobileState createState() => _HomeContentMobileState();
}

class _HomeContentMobileState extends BaseHomeContentsState<HomeContentMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: getAppBarTitle(),
          actions: [getMenuButton()],
        ),
        body: getBody());
  }

  PopupMenuButton<String> getMenuButton() {
    var itemBuilder = (BuildContext context) => <PopupMenuItem<String>>[
          getPopupMenuItem(bestPrice),
          getPopupMenuItem(menShoes),
          getPopupMenuItem(womenShoes)
        ].toList();
    return PopupMenuButton(
        itemBuilder: itemBuilder,
        icon: Icon(Icons.menu),
        onSelected: onSelectedMenuItem);
  }

  void onSelectedMenuItem(String selected) {
    switch (selected) {
      case bestPrice:
        scrollTo(bestPriceHeader.uniqueKey);
        break;
      case menShoes:
        scrollTo(menShoesHeader.uniqueKey);
        break;
      case womenShoes:
        scrollTo(womenShoesHeader.uniqueKey);
        break;
    }
  }

  PopupMenuItem<String> getPopupMenuItem(String title) {
    return PopupMenuItem(
        value: title,
        child: Title(
          title: title,
          color: kTextColor,
          child: Text(title),
        ));
  }
}
