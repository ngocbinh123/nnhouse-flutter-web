import 'package:flutter/material.dart';
import 'package:nnhouse_web/data/social_type.dart';

import '../constant.dart';

class SocialButton extends StatelessWidget {
  final color = Colors.white.withOpacity(0.8);
  final SocialType type;

  SocialButton({required this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: space08),
        child: TextButton.icon(
            style: Theme.of(context).textButtonTheme.style,
            onPressed: () {},
            icon: getIcon(),
            label: getLabel(context)));
  }

  Widget getLabel(BuildContext context) {
    var contentStyle =
        Theme.of(context).textTheme.headline6!.copyWith(color: color);
    String content = "";
    switch (type) {
      case SocialType.FACEBOOK: content = "www.facebook.com";
        break;
      case SocialType.ZALO: content = "chat.zalo.me";
        break;
      case SocialType.PHONE: content = "0931812831";
        break;
      case SocialType.EMAIL: content = "nnhome@gmail.com";
        break;
      case SocialType.ADDRESS: content = "Hồ Chí Minh";
        break;
      default: content = "";
        break;
    }
    return Text(
      content,
      style: contentStyle,
    );
  }

  Icon getIcon() {
    IconData iconData = Icons.comment;
    switch (type) {
      case SocialType.FACEBOOK:
        {
          iconData = Icons.facebook_sharp;
        }
        break;
      case SocialType.ZALO:
        {
          iconData = Icons.chat;
        }
        break;
      case SocialType.PHONE:
        {
          iconData = Icons.phone;
        }
        break;
      case SocialType.EMAIL:
        {
          iconData = Icons.email;
        }
        break;
      case SocialType.ADDRESS:
        {
          iconData = Icons.location_city;
        }
        break;
      default: iconData = Icons.align_horizontal_left_rounded;
      break;
    }
    return Icon(
      iconData,
      color: color,
      size: sizeIcon24,
    );
  }
}
