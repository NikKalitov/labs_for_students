// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Картинка из assets
              Image.asset(
                'assets/images/sun.png',
                height: 200,
                width: 200,
              ),

              // Картинка в контейнере (cover)
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      'assets/images/sun.png',
                    ),
                  ),
                ),
              ),

              // Картинка в контейнере (fill)
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/sun.png',
                    ),
                  ),
                ),
              ),

              // Картинка в контейнере (fitHeight)
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      'assets/images/sun.png',
                    ),
                  ),
                ),
              ),

              // Картинка в контейнере (fitWidth)
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(
                      'assets/images/sun.png',
                    ),
                  ),
                ),
              ),

              // Картинка в контейнере (cover)
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/sun.png',
                    ),
                  ),
                ),
              ),

              // Текст со шрифтом из assets
              Text(
                'Custom font from assets',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 20,
                ),
              ),

              // Картинка из интернета
              Image.network(
                'https://www.seekpng.com/png/full/258-2583831_sun-transparent-background-download-sun-png.png',
                height: 200,
                width: 200,
              ),

              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 200,
                ),
                child: Text(
                  'Big text big text big text big text big text big text big text big text big text big text big text big text big text big text big text big text big text big text big text big text ',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
