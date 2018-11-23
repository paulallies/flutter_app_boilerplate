import 'package:flutter/material.dart';
import 'package:flutter_app_boilerplate/actions/user.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  void _login() {
    var username = emailTextController.text;
    var password = passwordTextController.text;
    UserActions.authenticate(username, password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("assets/bg.jpg"),
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: 100.0,
              ),
              Form(
                child: Theme(
                  data: ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.green,
                      inputDecorationTheme: InputDecorationTheme(
                          labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                      ))),
                  child: Container(
                    padding: EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextInput(controller: emailTextController),
                        PasswordInput(controller: passwordTextController),
                        LoginButton(onPressed: _login)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  LoginButton({this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: MaterialButton(
        color: Colors.teal,
        textColor: Colors.white,
        child: Text("Login"),
        onPressed: onPressed,
        splashColor: Colors.redAccent,
      ),
    );
  }
}

class TextInput extends StatelessWidget {
  TextInput({this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: "Enter Email",
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}

class PasswordInput extends StatelessWidget {
  PasswordInput({this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: "Enter Password",
        ),
        obscureText: true,
      ),
    );
  }
}
