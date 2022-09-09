// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> tabsList = [
    'Вкладка 1',
    'Вкладка 2',
    'Вкладка 3',
    'Вкладка 4',
  ];
  List<String> listData = List.generate(100, (index) => index.toString());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabsList.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Keys'),
          bottom: TabBar(
            tabs: tabsList.map((String name) => Tab(text: name)).toList(),
          ),
        ),
        body: TabBarView(
          children: tabsList.map((name) {
            return ListView(
              // Без ключа позиция во вкладке не будет сохраняться
              // key: PageStorageKey(name),
              children: [
                for (int i = 0; i < listData.length; i++) Text(listData[i]),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
