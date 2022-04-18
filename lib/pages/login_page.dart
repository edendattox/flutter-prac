// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:flutter_application_1/utils/routes.dart';
import "package:google_fonts/google_fonts.dart";

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        changeButton = !changeButton;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/login.png", fit: BoxFit.cover),
              SizedBox(height: 20.0),
              Text("Welcome $name",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Please enter your name";
                        } else if (value.length < 4) {
                          return "name must be at least 4 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Please enter your password";
                        } else if (value.length < 6) {
                          return "Password must be at least 6 characters";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Material(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          width: changeButton ? 150 : 120,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: changeButton
                              ? Icon(Icons.done, color: Colors.white)
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
