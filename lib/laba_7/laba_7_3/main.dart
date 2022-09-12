// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'about_page.dart';
import 'content_page.dart';
import 'error_page.dart';
import 'home_page.dart';
import 'animation_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return ErrorPage();
          },
        );
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            );
          case AboutPage.routeName:
            return MaterialPageRoute(
              builder: (context) {
                return AboutPage();
              },
            );
          case ContentPage.routeName:
            return MaterialPageRoute(
              fullscreenDialog: true,
              builder: (context) {
                final args = settings.arguments as Map<String, dynamic>;
                return ContentPage(map: args);
              },
            );
          case AnimationPage.routeName:
            return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return AnimationPage();
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                CurvedAnimation curvedAnimation = CurvedAnimation(
                  parent: animation,
                  curve: Curves.fastOutSlowIn,
                );
                Animation<double> animate = Tween<double>(begin: 0.0, end: 1.0)
                    .animate(curvedAnimation);
                return ScaleTransition(
                  scale: animate,
                  child: FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
                );
              },
            );
          default:
            return MaterialPageRoute(
              builder: (context) {
                return ErrorPage();
              },
            );
        }
      },
      home: HomePage(),
    );
  }
}
