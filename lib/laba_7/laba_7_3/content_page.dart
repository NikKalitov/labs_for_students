// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  static const routeName = '/content';
  final Map<String, dynamic> map;
  const ContentPage({super.key, required this.map});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('${widget.map['name']}: ${widget.map['age']}'),
      ),
    );
  }
}
