import 'package:flutter/material.dart';

class ColumnRowExample extends StatelessWidget {
  const ColumnRowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          // child: Row(
          child: Column(
            // mainAxisAlignment позволяет задать расположение дочерних виджетов
            // на главное оси виджета
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            // crossAxisAlignment работает не всегда, поскольку виджет занимает
            // минимальное требуемое место. В случае, если мы, например, обернем
            // колонну в SizedBox.expand, виджет будет занимать всё свободное место.
            // В этом случае crossAxisAlignment будет давать эффект
            crossAxisAlignment: CrossAxisAlignment.center,

            // mainAxisSize позволяет задать размер главной оси виджета
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(color: Colors.green, height: 100, width: 100),
              Container(color: Colors.blue, height: 100, width: 100),
              Container(color: Colors.red, height: 100, width: 100),
            ],
          ),
        ),
      ),
    );
  }
}
