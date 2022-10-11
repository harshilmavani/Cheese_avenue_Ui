import 'package:cheeseavenue/scaffold_demo.dart';
import 'package:flutter/material.dart';

import 'Home_Page.dart';
import 'Page_2.dart';
import 'Page_3.dart';
import 'bottom_bar_screen.dart';
import 'detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BottomBarScreen(),
    );
  }
}
