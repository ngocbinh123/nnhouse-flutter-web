import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nnhouse_web/constant.dart';
import 'package:nnhouse_web/screens/home/home_screen.dart';

import 'res/colors.dart';

void main() {
  /**
   * Register font license
   * https://pub.dev/packages/google_fonts
   */
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization, builder: (context, snapshot) {
          if(snapshot.hasError) return somethingWentWrong(context, snapshot.error.toString());
          if(snapshot.connectionState == ConnectionState.done) return getAppBody(context);
          return loading(context);
    });
  }

  Widget somethingWentWrong(BuildContext context, String msg) {
    return Text(msg, style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.red));
  }

  Widget loading(BuildContext context) {
    return CircularProgressIndicator();
  }

  Widget getAppBody(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kAccentColor,
          brightness: Brightness.light,
          fontFamily: GoogleFonts.openSans().fontFamily,
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: kTextColor, displayColor: kAccentColor)),
      home: HomeScreen(),
    );
  }
}
