import 'package:flutter/material.dart';
import 'package:nnhouse_web/components/social_button.dart';
import 'package:nnhouse_web/constant.dart';
import 'package:nnhouse_web/data/social_type.dart';
import 'package:nnhouse_web/res/colors.dart';

class Footer extends StatelessWidget {
  final int partSize = 2;
  Color headerColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryDarkColor,
      child: getBody(context),
    );
  }

  Widget getBody(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 750) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [getBranchInfo(context), getSocialNetworks(context)],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [getBranchInfo(context), getSocialNetworks(context)],
      );
    }
  }

  Widget getSocialNetworks(BuildContext context) {
    var headerStyle = Theme.of(context)
        .textTheme
        .headline5!
        .copyWith(color: headerColor, fontWeight: FontWeight.w500);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: space30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: space24),
              child: Text(
                "$connectWithUs        ",
                style: headerStyle,
              )),
          SocialButton(type: SocialType.FACEBOOK),
          SocialButton(type: SocialType.ZALO),
          Padding(
              padding: EdgeInsets.symmetric(vertical: space10),
              child: Text("")),
        ],
      ),
    );
  }

  Widget getBranchInfo(BuildContext context) {
    var headerStyle = Theme.of(context)
        .textTheme
        .headline5!
        .copyWith(color: headerColor, fontWeight: FontWeight.w400);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: space30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: space24),
              child: Text(
                companyName,
                style: headerStyle,
              )),
          SocialButton(type: SocialType.PHONE),
          SocialButton(type: SocialType.EMAIL),
          SocialButton(type: SocialType.ADDRESS)
        ],
      ),
    );
  }
}
