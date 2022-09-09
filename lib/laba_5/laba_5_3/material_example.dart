// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class MaterialExample extends StatefulWidget {
  const MaterialExample({super.key});

  @override
  State<MaterialExample> createState() => _MaterialExampleState();
}

class _MaterialExampleState extends State<MaterialExample> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 8.0,
        // Или leading, или drawer
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        // Или actions, или endDrawer
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DrawerHeader(
                child: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  radius: 60,
                  child: Image.network(
                      'https://cdn4.iconfinder.com/data/icons/user-people-2/48/5-512.png'),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print('you tapped');
                },
                onLongPress: () {
                  print('you long pressed');
                },
              ),
              ListTile(
                title: Text('Photos'),
                leading: Icon(Icons.photo),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  print('you tapped');
                },
                onLongPress: () {
                  print('you long pressed');
                },
              ),
              ListTile(title: Text('Текст'), subtitle: Text('Текст внизу')),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('endDrawer'),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        elevation: 10,
        notchMargin: 8,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      // bottomSheet: BottomSheet(
      //   builder: (context) {
      //     return Container(
      //       height: 200,
      //       color: Colors.green,
      //     );
      //   },
      //   onClosing: () {},
      // ),
    );
  }
}
