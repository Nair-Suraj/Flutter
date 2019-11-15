import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/home_screen/homescreen.dart';
import 'package:flutter_app_stack_overflow/features/login_screen/login.dart';
import 'package:flutter_app_stack_overflow/features/login_screen/login_via_email.dart';
import 'package:flutter_app_stack_overflow/features/splash/splash.dart';

void main() => runApp(new MaterialApp(
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => HomeScreen(),
        '/LoginScreen': (BuildContext context) => LoginScreen(),
      },
    ));
