// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FutureBuilder(
          future: futureString(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Text(snapshot.data!);
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Text('Waiting');
            } else {
              return Text('Error');
            }
          },
        ),
      ),
    );
  }

  Future<String> futureString() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Данные';
  }
}
