import 'package:flutter/material.dart';
import 'package:portfolio_main_project/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
      
      primarySwatch: Colors.blue,
      ),
      home: portfolio(),
    );
  }
}
