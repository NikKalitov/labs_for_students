// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
        centerTitle: true,
        // параметр отвечает за наличие стрелки назад при переходе
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home page'),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Go back'))
          ],
        ),
      ),
    );
  }
}
