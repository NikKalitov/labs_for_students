// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/cupertino.dart';

class Nav {
  final String title;
  final IconData icon;

  Nav({
    required this.title,
    required this.icon,
  });
}

final tabBar = [
  Nav(title: 'Home', icon: CupertinoIcons.home),
  Nav(title: 'Files', icon: CupertinoIcons.folder),
  Nav(title: 'Emails', icon: CupertinoIcons.mail),
];

class CupertinoTabExample extends StatefulWidget {
  const CupertinoTabExample({super.key});

  @override
  State<CupertinoTabExample> createState() => _CupertinoTabExampleState();
}

class _CupertinoTabExampleState extends State<CupertinoTabExample> {
  final CupertinoTabController controller = CupertinoTabController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      print(controller.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: controller,
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return HomeView();
              case 1:
                return FilesView(controller: controller);
              case 2:
                return EmailsView();
              default:
                return HomeView();
            }
          },
        );
      },
      tabBar: CupertinoTabBar(
        items: [
          for (int i = 0; i < tabBar.length; i++)
            BottomNavigationBarItem(
              label: tabBar[i].title,
              icon: Icon(tabBar[i].icon),
            ),
        ],
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Home nav bar'),
      ),
      child: Center(
        child: Text('Home'),
      ),
    );
  }
}

class FilesView extends StatelessWidget {
  const FilesView({super.key, required this.controller});
  final CupertinoTabController controller;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Files nav bar'),
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Files'),
              SizedBox(height: 12),
              CupertinoButton.filled(
                onPressed: () {
                  controller.index = 2;
                },
                child: Text('Go to Emails tab'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmailsView extends StatelessWidget {
  const EmailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Emails nav bar'),
      ),
      child: Center(
        child: Text('Emails'),
      ),
    );
  }
}
