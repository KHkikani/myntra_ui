import 'package:flutter/material.dart';
import 'package:myntra_ui/Screens/homePage.dart';
import 'package:myntra_ui/Screens/itemPage.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => const HomePage(),
        "itemPage":(context) => const ItemPage(),
      },
    )
  );
}