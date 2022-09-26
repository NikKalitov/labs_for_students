// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'laba_8_2/future_example.dart';
import 'laba_8_4/future_builder_example.dart';
import 'laba_8_5/stream_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: FutureExample(),
      home: FutureBuilderExample(),
      // home: StreamExample(),
    );
  }
}
