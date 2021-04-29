import 'package:flutter/material.dart';
import 'package:messaging_app/widget/widget.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  TextEditingController usernameTextEditingController =
      new TextEditingController();
  TextEditingController emailTextEditingController =
      new TextEditingController();
  TextEditingController passwordTextEditingController =
      new TextEditingController();

  signmeUp() {
    if (formKey.currentState.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
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
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val) {
                          return val.isEmpty || val.length < 4
                              ? "Please Provide Username"
                              : null;
                        },
                        controller: usernameTextEditingController,
                        style: simpleTextStyle(),
                        decoration: textFieldInputDecoration("Username"),
                      ),
                      TextFormField(
                        validator: (val) {
                          return RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(val)
                              ? null
                              : "Enter correct email";
                        },
                        controller: emailTextEditingController,
                        style: simpleTextStyle(),
                        decoration: textFieldInputDecoration("E-mail"),
                      ),
                      TextFormField(
                        validator: (val) {
                          return val.length < 6
                              ? "Enter Password 6+ characters"
                              : null;
                        },
                        controller: passwordTextEditingController,
                        style: simpleTextStyle(),
                        decoration: textFieldInputDecoration("Password"),
                      ),
                    ],
                  ),
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
                GestureDetector(
                  onTap: () {
                    signmeUp();
                  },
                  child: Container(
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
                    "Sign Up with Google",
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: designtextStyle(),
                    ),
                    Text(
                      "Login here",
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
