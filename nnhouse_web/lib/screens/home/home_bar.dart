import 'package:flutter/material.dart';
import 'package:nnhouse_web/components/accent_button.dart';
import 'package:nnhouse_web/screens/home/menu_item.dart';

import '../../constant.dart';

class HomeBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(space20),
      padding: EdgeInsets.all(space20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(46),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.16))
          ]),
      child: Row(
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.center,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            appName.toUpperCase(),
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          MenuItem(title: "Nam", press: () {}),
          MenuItem(title: "Nữ", press: () {}),
          MenuItem(title: "Trẻ em", press: () {}),
          MenuItem(title: "Giá Tốt", press: () {}),
        ],
      ),
    );
  }
}
