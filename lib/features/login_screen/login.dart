import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/login_screen/login_via_email.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: Center(
                    child: Text(
              'QuickBee',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                  fontFamily: 'AppFont'),
            ))),
            Expanded(
                child: Center(
                    child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Color(0xFF14D18F),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EmailLogin()),
                        );
                      },
                      child: Text(
                        'Sign in with Email',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: RaisedButton.icon(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            onPressed: () {},
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Icon(
                                FontAwesomeIcons.facebookF,
                                color: Colors.white,
                              ),
                            ),
                            label: Text(
                              'Facebook',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            color: Color(0xFF4564A4),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: RaisedButton.icon(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            onPressed: () {},
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 12.0),
                              child: Icon(
                                FontAwesomeIcons.googlePlus,
                                color: Colors.white,
                              ),
                            ),
                            label: Text(
                              'Google',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            color: Color(0xFFDF513B),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ))),
            Center(
              child: RichText(
                text: TextSpan(
                    style: TextStyle(fontSize: 14.0, color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Don\'t have an account? ',
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF14D18F),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print('Open Sign Up page'),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
