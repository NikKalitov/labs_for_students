// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SafeAreaExample extends StatelessWidget {
  const SafeAreaExample({super.key});

  @override
  Widget build(BuildContext context) {
    // C SafeArea
    // return Scaffold(
    //   body: SafeArea(
    //     child: Text(
    //         '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a rutrum enim. Integer maximus molestie ante id tincidunt. Phasellus porta quam neque, non volutpat dui maximus at. Nulla pretium placerat mollis. Ut tellus massa, feugiat eu eleifend eget, condimentum dictum elit. Aliquam porta eu lacus eu tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut condimentum eu libero vitae venenatis. Aenean a diam placerat, efficitur nisl a, tincidunt libero. Ut ut mollis velit. Sed orci velit, venenatis sit amet tellus at, vestibulum interdum nibh. Aliquam erat volutpat. Donec vehicula elit nibh, semper fermentum turpis sodales vitae. Vestibulum enim orci, cursus ut euismod quis, dignissim sit amet sapien. Aenean eget suscipit tellus, non blandit ante. Phasellus et dictum turpis. Sed tincidunt imperdiet mattis. Duis feugiat turpis nec orci cursus imperdiet. Nullam convallis feugiat justo, eget consectetur velit dapibus nec. Aliquam bibendum velit id lobortis scelerisque. Pellentesque varius hendrerit ante, sit amet dignissim dui convallis laoreet. Fusce vitae neque ipsum.''',),
    //   ),
    // );

    // Без SafeArea
    return Scaffold(
      body: Text(
        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a rutrum enim. Integer maximus molestie ante id tincidunt. Phasellus porta quam neque, non volutpat dui maximus at. Nulla pretium placerat mollis. Ut tellus massa, feugiat eu eleifend eget, condimentum dictum elit. Aliquam porta eu lacus eu tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut condimentum eu libero vitae venenatis. Aenean a diam placerat, efficitur nisl a, tincidunt libero. Ut ut mollis velit. Sed orci velit, venenatis sit amet tellus at, vestibulum interdum nibh. Aliquam erat volutpat. Donec vehicula elit nibh, semper fermentum turpis sodales vitae. Vestibulum enim orci, cursus ut euismod quis, dignissim sit amet sapien. Aenean eget suscipit tellus, non blandit ante. Phasellus et dictum turpis. Sed tincidunt imperdiet mattis. Duis feugiat turpis nec orci cursus imperdiet. Nullam convallis feugiat justo, eget consectetur velit dapibus nec. Aliquam bibendum velit id lobortis scelerisque. Pellentesque varius hendrerit ante, sit amet dignissim dui convallis laoreet. Fusce vitae neque ipsum.''',
      ),
    );
  }
}
