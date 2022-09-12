// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  static const routeName = '/animation';
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Page'),
      ),
      body: Center(
        child: Text('Animation page'),
      ),
    );
  }
}
