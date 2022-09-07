// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import './skillbox_4_2/home_page.dart' as Stateful;
import './skillbox_4_4/home_page.dart' as Stateless;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stateful.HomePage(),
    );
  }
}
