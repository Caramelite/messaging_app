import 'package:flutter/material.dart';
import 'package:messaging_app/widget/widget.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50.0,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("E-mail"),
                ),
                TextField(
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("Password"),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text("Forgot Passwod?", style: simpleTextStyle()),
                  ),
                ),
                SizedBox(height: 8.0),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xff007EF4),
                        const Color(0xff2A75BC),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 17.0),
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    "Sign In with Google",
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: designtextStyle(),
                    ),
                    Text(
                      "Register now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
