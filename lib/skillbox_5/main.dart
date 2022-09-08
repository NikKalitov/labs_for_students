// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'skillbox_5_2/safe_area_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeAreaExample(),
    );
  }
}
