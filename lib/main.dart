import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Dragon ball super',
    theme: ThemeData(primarySwatch: Colors.lightGreen,
        fontFamily: 'indieFlower'
    ),
    home: MyHomePage(),
  ));
}