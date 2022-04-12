import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Codepur";

    return MaterialApp(
      home: HomePage(),
    );
  }
}
