// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CenterExample extends StatelessWidget {
  const CenterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Позволяет расположить виджет в центре другого виджета
      body: Center(
        child: Text('Center example'),
      ),
    );
  }
}
