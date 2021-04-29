import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:nnhouse_web/screens/home/home_content_web.dart';

import 'home_content_mobile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return kIsWeb ? HomeContentWeb() : HomeContentMobile();
  }
}
