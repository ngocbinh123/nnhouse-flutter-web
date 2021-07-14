import 'package:flutter/material.dart';
import 'package:nnhouse_web/components/loading_widget.dart';
import 'package:nnhouse_web/data/request_status.dart';
import 'package:nnhouse_web/res/number.dart';
import 'package:nnhouse_web/res/string.dart';

class BodyBuilder extends StatelessWidget {
  RequestStatus status = RequestStatus.DOING;
  Widget child;

  BodyBuilder({required this.child, required this.status});

  @override
  Widget build(BuildContext context) {
    return buildingBody(context);
  }

  Widget buildingBody(BuildContext context) {
    switch (status) {
      case RequestStatus.DONE:
        return child;
      case RequestStatus.ERROR:
        return buildErrorContainer(context);
      case RequestStatus.DOING_SLIVER:
        return buildLoadingBar(true);
      default:
        return buildLoadingBar(false);
    }
  }

  Widget buildErrorContainer(BuildContext context) {
    return Container(
        child: Text(
      errorCouldNotLoadPage,
      style: Theme.of(context).textTheme.headline3,
    ));
  }

  Widget buildLoadingBar(bool isSliver) {
    if (isSliver) {
      return SliverToBoxAdapter(
          child: Container(
        height: minHeightOfContainer,
        alignment: Alignment.center,
        child: LoadingWidget(),
      ));
    }

    return Container(
      height: minHeightOfContainer,
      alignment: Alignment.center,
      child: LoadingWidget(),
    );
  }
}
