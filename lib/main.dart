import 'package:flutter/material.dart';

import 'FirstPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff191919),
        scaffoldBackgroundColor: Color(0xff2E2E2E),
      ),
      home: FirstPage(),
    );
  }
}
