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
        padding: const EdgeInsets.all(space20),
        child: Text(
          title.toUpperCase(),
          style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white, fontWeight: FontWeight.w600, fontSize: textSizeOfMenuItem),
        ),
      ),
    );
  }
}
