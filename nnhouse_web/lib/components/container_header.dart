import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nnhouse_web/constant.dart';

class ContainerHeader extends StatelessWidget {
  final String title;
  const ContainerHeader({required this.title});
  @override
  Widget build(BuildContext context) {
    var headerStyle = Theme.of(context).textTheme.headline5!
        .copyWith(fontWeight: FontWeight.bold);
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: kPrimaryColor, width: 1))),
      padding: EdgeInsets.only(left: space30, top: space40, bottom: space10),
      child: Text(title.toUpperCase(), style: headerStyle),
    );
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: space30, top: space40, bottom: space20),
        child: Text(title, style: headerStyle),
      ),
    );
  }
}
