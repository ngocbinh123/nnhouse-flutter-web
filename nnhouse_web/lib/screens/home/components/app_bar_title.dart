import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class AppBarTitle extends StatelessWidget {
  final GestureTapCallback press;

  const AppBarTitle({required this.press});

  @override
  Widget build(BuildContext context) {
    var appNameStyle =
        Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white);
    return TextButton.icon(
        onPressed: press,
        icon: Image.asset("assets/images/logo.png",
            height: 25, alignment: Alignment.center),
        label: Text(
          appName,
          style: appNameStyle,
        ));
    return Image.asset("assets/images/logo.png",
        height: 25, alignment: Alignment.center);
  }
}
