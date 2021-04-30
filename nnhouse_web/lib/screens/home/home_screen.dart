import 'package:flutter/material.dart';
import 'package:nnhouse_web/screens/home/home_content_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'home_content_mobile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: HomeContentWeb(),
      tablet: HomeContentWeb(),
      mobile: HomeContentMobile(),
    );
  }
}
