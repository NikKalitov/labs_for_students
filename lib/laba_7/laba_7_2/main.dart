// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'home_page.dart';
import 'about_page.dart';
import 'error_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // указание путей (routes)
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
      },
      initialRoute: '/',
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return ErrorPage();
          },
        );
      },

      // если не использовать пути (routes)
      // home: HomePage(),
    );
  }
}
