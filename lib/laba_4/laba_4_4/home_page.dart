// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<int> counterNotifier = ValueNotifier<int>(0);
  final ValueNotifier<List<int>> arrayNotifier = ValueNotifier<List<int>>([]);
  List<int> array = [];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('HomePage build');
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  child: Text('counter SetState'),
                  onPressed: () {
                    counter++;
                    setState(() {});
                  },
                ),
                SizedBox(width: 50),
                SetStateNumber(counter: counter),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  child: Text('counter ValueNotifier'),
                  onPressed: () {
                    counterNotifier.value++;
                  },
                ),
                SizedBox(width: 20),
                ValueNotifierNumber(counterNotifier: counterNotifier),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SetStateNumber extends StatelessWidget {
  const SetStateNumber({super.key, required this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    print('SetStateNumber build');
    return ChangingText(value: counter);
  }
}

class ValueNotifierNumber extends StatelessWidget {
  const ValueNotifierNumber({super.key, required this.counterNotifier});

  final ValueNotifier<int> counterNotifier;

  @override
  Widget build(BuildContext context) {
    print('ValueNotifierNumber build');
    return ValueListenableBuilder<int>(
      valueListenable: counterNotifier,
      builder: (context, value, child) {
        return ChangingText(value: value);
      },
    );
  }
}

class ChangingText extends StatelessWidget {
  const ChangingText({super.key, required this.value});

  final int value;

  @override
  Widget build(BuildContext context) {
    print('ChangingText build');
    return Text(value.toString());
  }
}
