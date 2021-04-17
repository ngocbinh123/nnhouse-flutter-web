import 'package:flutter/material.dart';
import 'package:nnhouse_web/constant.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final GestureTapCallback press;
  const MenuItem({
    required this.title,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
              color: kTextcolor.withOpacity(0.7), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
