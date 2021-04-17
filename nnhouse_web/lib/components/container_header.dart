import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nnhouse_web/constant.dart';

class ContainerHeader extends StatelessWidget {
  final String title;
  const ContainerHeader({required this.title});
  @override
  Widget build(BuildContext context) {
    var headerStyle = Theme.of(context)
        .textTheme
        .headline4!
        .copyWith(fontWeight: FontWeight.bold, color: Colors.black);

    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: space30, top: space40, bottom: space20),
        child: Text(title.toUpperCase(), style: headerStyle),
      ),
    );
  }
}
