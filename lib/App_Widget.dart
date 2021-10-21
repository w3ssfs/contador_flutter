import 'package:flutter/material.dart';
import 'main.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red,
          brightness: Brightness.dark),
      home: Home(),
    );
  }
}
