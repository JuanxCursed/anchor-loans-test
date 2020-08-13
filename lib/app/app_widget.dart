import 'package:anchor_loans_test/app/shared/constants/fonts.dart';
import 'package:anchor_loans_test/app/shared/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:anchor_loans_test/app/shared/constants/flavors.dart';
import 'package:anchor_loans_test/app/shared/utils/environment.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: Environment.isReleaseBuild
          ? FlavorRelease.appName
          : FlavorDebug.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
