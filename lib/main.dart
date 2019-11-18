import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/login_screen/login.dart';
import 'package:flutter_app_stack_overflow/features/splash/splash.dart';

import 'features/home_screen/home.dart';

void main() => runApp(new MaterialApp(
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => Home(0),
        '/LoginScreen': (BuildContext context) => LoginScreen(),
      },
    ));
