import 'package:flutter/material.dart';

import '../constant.dart';

class AccentButton extends StatelessWidget {
  final String name;
  final VoidCallback press;
  const AccentButton({required this.name, required this.press});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
        onPressed: press,
        child: Text(name),
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(
                TextStyle(fontWeight: FontWeight.bold)),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(horizontal: space30, vertical: space20)),
            backgroundColor: MaterialStateProperty.all<Color>(kAccentColor),
            foregroundColor: MaterialStateProperty.all<Color>(kTextColor)),
      ),
    );
  }
}
