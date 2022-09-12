// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class FutureExample extends StatefulWidget {
  const FutureExample({super.key});

  @override
  State<FutureExample> createState() => _FutureExampleState();
}

class _FutureExampleState extends State<FutureExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                print('start');
                // без использования ключевого слова await
                // getString(seconds: 1).then((text) {
                //   print(text);
                // }).catchError((error) {
                //   print(error);
                // }).whenComplete(() {
                //   print('Функция выполнена');
                // });
                // с использованием ключевого слова await
                // await getString(seconds: 1).then((text) {
                //   print(text);
                // }).catchError((error) {
                //   print(error);
                // }).whenComplete(() {
                //   print('Функция выполнена');
                // });
                print('end');
              },
              child: Text('Test future'),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> getString({int seconds = 1}) async {
    return Future.delayed(
      Duration(seconds: seconds),
      () {
        if (seconds > 2) {
          return Future.error('error');
        } else {
          return 'Данные';
        }
      },
    );
  }
}
