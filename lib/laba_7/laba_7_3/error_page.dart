// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error page'),
      ),
      body: Center(
        child: Text('Error!'),
      ),
    );
  }
}
