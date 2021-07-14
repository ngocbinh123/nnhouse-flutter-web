import 'package:flutter/material.dart';
import 'package:nnhouse_web/res/colors.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: 6,
      backgroundColor: Colors.grey.withOpacity(0.5),
      color: kPrimaryColor,
    );
  }
}
