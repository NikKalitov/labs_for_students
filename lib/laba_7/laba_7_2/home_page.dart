// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './about_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home page'),
            ElevatedButton(
              onPressed: () {
                // первый вариант? без указания путей (routes)
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) {
                //   return AboutPage();
                // }));

                // второй вариант, с указаниями путей (routes)
                Navigator.of(context).pushNamed('/about');
              },
              child: Text('Go to About page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/вызываюОшибку');
              },
              child: Text('Вызвать ошибку'),
            ),
          ],
        ),
      ),
    );
  }
}
