import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nnhouse_web/constant.dart';

mixin AppTheme implements ThemeData {}

var appFontFamiliy = GoogleFonts.openSans().fontFamily;

TextStyle menuItemStyle = TextStyle(
    color: kTextColor,
    fontFamily: GoogleFonts.openSans().fontFamily,
    fontWeight: FontWeight.bold);

var productPriceStyle =
    GoogleFonts.openSans().getTextStyle(textScaleFactor: 1.0);
// .textTheme
// .headline6!
// .copyWith(color: Colors.black, fontWeight: FontWeight.bold);

// TextStyle nameStyle = Theme.of(context).textTheme.headline6!;
// GoogleFonts.roboto(color: kTextcolor.withOpacity(0.7));
// TextStyle(color: kTextcolor.withOpacity(0.7), fontFamily: appFont.);
