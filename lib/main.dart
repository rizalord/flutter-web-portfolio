import 'package:flutter/material.dart';
import 'package:portfolio/root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This wbugidget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ahmad Khamdani - Fullstack Developer',
      initialRoute: '/',
      routes: {
        '/': (context) => Root(),
      },
    );
  }
}
