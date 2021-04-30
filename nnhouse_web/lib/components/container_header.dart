import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nnhouse_web/base/base_stateless_widget.dart';
import 'package:nnhouse_web/constant.dart';
import 'package:nnhouse_web/res/colors.dart';

class ContainerHeader extends BaseStatelessWidget {
  late GlobalKey uniqueKey;
  final String title;

  ContainerHeader({required this.title}) {
    uniqueKey = GlobalKey(
        debugLabel: "____CONTAINER_HEADER_${title.toUpperCase()}____");
  }

  @override
  Widget build(BuildContext context) {
    var headerStyle = Theme.of(context)
        .textTheme
        .headline5!
        .copyWith(fontWeight: FontWeight.bold);
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: kPrimaryColor, width: 1))),
      padding: EdgeInsets.only(left: space30, top: space40, bottom: space10),
      child: Text(title.toUpperCase(), style: headerStyle),
    );
  }
}
