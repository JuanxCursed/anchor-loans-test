import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static String productSans = "ProductSans";
  static String roboto = "Roboto";
  static String defaultFontFamily = roboto;

  static const defaultFontSize = 16.0;

  static TextStyle body1 = TextStyle(
    fontSize: defaultFontSize * 0.8,
    color: Colors.grey.shade400,
  );
  static TextStyle body2 = TextStyle(
    fontSize: defaultFontSize,
    fontFamily: productSans,
  );

  static TextStyle caption = TextStyle(
    fontSize: defaultFontSize * 0.8,
    fontWeight: FontWeight.bold,
    color: Colors.blue.shade600,
  );
  static TextStyle headline1 = TextStyle(
    fontSize: defaultFontSize * 2.5,
    fontWeight: FontWeight.bold,
    color: Colors.grey.shade800,
  );
  static TextStyle headline2 = TextStyle(
    fontSize: defaultFontSize * 2.2,
    fontWeight: FontWeight.bold,
    color: Colors.grey.shade800,
  );
  static TextStyle headline3 = TextStyle(
    fontSize: defaultFontSize * 1.7,
    fontWeight: FontWeight.bold,
    color: Colors.grey.shade800,
  );
  static TextStyle headline4 = TextStyle(
    fontSize: defaultFontSize * 1.6,
    fontWeight: FontWeight.bold,
    color: Colors.grey.shade800,
  );
  static TextStyle headline5 = TextStyle(
    fontSize: defaultFontSize * 1.4,
    fontWeight: FontWeight.bold,
    color: Colors.grey.shade800,
  );
  static TextStyle headline6 = TextStyle(
    fontSize: defaultFontSize * 1.3,
    fontWeight: FontWeight.bold,
    color: Colors.grey.shade800,
  );

  static Color primaryColor = Colors.blue.shade600;
  static Color accentColor = Colors.blue.shade800;

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: primaryColor,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: Colors.white,
      onPrimary: Colors.white,
      primaryVariant: Colors.white38,
      secondary: Colors.red,
    ),
    primaryColor: primaryColor,
    accentColor: accentColor,
    fontFamily: defaultFontFamily,
    cardTheme: CardTheme(
      color: Colors.white,
    ),
    iconTheme: IconThemeData(
      color: Colors.white54,
    ),
    textTheme: TextTheme(
        headline1: headline1,
        headline2: headline2,
        headline3: headline3,
        headline4: headline4,
        headline5: headline5,
        headline6: headline6,
        bodyText1: body1,
        bodyText2: body2,
        caption: caption),
    buttonTheme: ButtonThemeData(
      // buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
      height: 50.0,
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        onPrimary: Colors.white,
        primaryVariant: Colors.white38,
        secondary: Colors.red,
      ),
    ),
  );
}
