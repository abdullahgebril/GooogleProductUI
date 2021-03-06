import 'package:flutter/material.dart';

import 'Screens/Products_list.dart';
import 'Screens/ProductDetailsScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
      ),
      home: Products_List_Screen(),
    );
  }
}
