// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './laba_5_2/safe_area_example.dart';
import './laba_5_2/expanded_example.dart';
import './laba_5_2/center_example.dart';
import './laba_5_2/align_example.dart';
import './laba_5_2/column_row_example.dart';
import './laba_5_3/material_example.dart';
import './laba_5_4/cupertino_example.dart';
import './laba_5_4/cupertino_tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //   return MaterialApp(
    //     // home: SafeAreaExample(),
    //     // home: ExpandedExample(),
    //     // home: CenterExample(),
    //     // home: AlignExample(),
    //     // home: ColumnRowExample(),
    //     home: MaterialExample(),
    //   );

    return CupertinoApp(
      // home: CupertinoExample(),
      home: CupertinoTabExample(),
    );
  }
}
