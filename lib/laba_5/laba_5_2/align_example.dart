import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  const AlignExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Выравнивает дочерний элемент внутри себя
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 150,
            width: 150,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
