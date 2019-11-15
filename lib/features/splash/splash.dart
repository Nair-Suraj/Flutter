import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashDuration() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LoginScreen');
  }

  @override
  void initState() {
    super.initState();
    splashDuration();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'QuickBee',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 48,fontFamily: 'AppFont'),
        ),
      ),
    );
  }
}
