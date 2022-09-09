// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';

class CupertinoExample extends StatefulWidget {
  const CupertinoExample({super.key});

  @override
  State<CupertinoExample> createState() => _CupertinoExampleState();
}

class _CupertinoExampleState extends State<CupertinoExample> {
  void showModalPopup(String title) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return Container(
          height: 240,
          color: CupertinoColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyle(color: CupertinoColors.activeGreen),
                ),
                SizedBox(height: 12),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam fermentum fermentum feugiat. Donec magna eros, feugiat sed tortor sed, posuere convallis justo. In placerat diam congue fringilla interdum. Mauris venenatis tincidunt leo nec congue. Cras blandit at dui ut convallis. Suspendisse potenti. Nulla quam sapien, condimentum nec orci ut, suscipit aliquet purus.',
                )
              ],
            ),
          ),
        );
      },
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: Icon(CupertinoIcons.info),
        leading: Text('Leading'),
        middle: Text('Middle'),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CupertinoButton(
                onPressed: () {
                  showModalPopup('Button');
                },
                child: Text('Button'),
              ),
              SizedBox(height: 24),
              CupertinoButton.filled(
                onPressed: () {
                  showModalPopup('Filled');
                },
                child: Text('Filled'),
              ),
              CupertinoTextField(
                placeholder: 'Заполните поле email',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
