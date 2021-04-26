import 'package:flutter/material.dart';
import 'package:nnhouse_web/components/social_button.dart';
import 'package:nnhouse_web/constant.dart';
import 'package:nnhouse_web/data/social_type.dart';

class Footer extends StatelessWidget {
  Color headerColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryDarkColor,
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          getBranchInfo(context),
          Padding(
            padding: EdgeInsets.only(left: space40),
            child: getSocialNetworks(context),
          )
        ],
      ),
    );
  }

  Widget getSocialNetworks(BuildContext context) {
    var headerStyle = Theme.of(context)
        .textTheme
        .headline5!
        .copyWith(color: headerColor, fontWeight: FontWeight.w500);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.symmetric(vertical: space24),
            child: Text(
              connectWithUs,
              style: headerStyle,
            )),
        SocialButton(type: SocialType.FACEBOOK),
        SocialButton(type: SocialType.ZALO)
      ],
    );
  }

  Widget getBranchInfo(BuildContext context) {
    var headerStyle = Theme.of(context)
        .textTheme
        .headline5!
        .copyWith(color: headerColor, fontWeight: FontWeight.w500);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: space20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: space20),
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
