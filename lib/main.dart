import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_stack_overflow/features/login_screen/login.dart';
import 'package:flutter_app_stack_overflow/features/navigationbar/navigation_bar.dart';
import 'package:flutter_app_stack_overflow/features/splash/splash.dart';

import 'features/home_screen/home.dart';
import 'features/routing/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(new MaterialApp(
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/App': (BuildContext context) => App(),
      '/LoginScreen': (BuildContext context) => LoginScreen(),
    },
  ));
}
