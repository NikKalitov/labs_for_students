// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'laba_4_2/home_page.dart' as stateful;
import 'laba_4_3/home_page.dart' as stateless;
import 'laba_4_4/home_page.dart' as value_notifier;
import 'laba_4_5/home_page.dart' as keys;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: stateful.HomePage(),
      // home: stateless.HomePage(),
      // home: value_notifier.HomePage(),
      home: keys.HomePage(),
    );
  }
}
