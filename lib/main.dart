import 'package:flutter/material.dart';
import 'package:nowapp_flutter/home.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}