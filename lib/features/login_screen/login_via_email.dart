import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/home_screen/asso_home_screen.dart';

class EmailLogin extends StatefulWidget {
  @override
  _EmailLoginState createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Center(
                  child: Text(
                'QuickBee',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 42,
                    fontFamily: 'AppFont'),
              )),
            ),
            emailLoginForm(context, _emailController, _passwordController),
          ],
        ),
      ),
    );
  }
}

Widget emailLoginForm(
    BuildContext context,
    TextEditingController _emailController,
    TextEditingController _passwordController) {
  return Flexible(
    flex: 2,
    child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Theme(
            data: ThemeData(
              primaryColor: Color(0xFF14D18F),
            ),
            child: TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "E-mail Address",
                labelStyle: TextStyle(color: Colors.grey),
                hasFloatingPlaceholder: true,
              ),
              validator: (String arg) {
                bool emailValid =
                    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(arg);
                if (!emailValid) {
                  return 'Enter valid email';
                } else {
                  return null;
                }
              },
            ),
          ),
          Theme(
            data: ThemeData(
              primaryColor: Color(0xFF14D18F),
            ),
            child: TextFormField(
              obscureText: true,
              controller: _passwordController,
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.grey),
                  hasFloatingPlaceholder: true),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 50,
                width: 160,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    String userName = _emailController.text;
                    String password = _passwordController.text;

                    if (userName.isNotEmpty && password.isNotEmpty) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    }

                    print('login attempt: $userName with $password');
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color(0xFF14D18F),
                ),
              ),
              Text(
                'Forgor Password?',
                style: TextStyle(color: Color(0xFF14D18F)),
              )
            ],
          )
        ],
      ),
    ),
  );
}
