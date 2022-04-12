import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.loginRoute);
            },
          ),
        ),
        drawer: Drawer());
  }
}
