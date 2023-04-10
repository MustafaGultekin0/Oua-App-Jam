import 'package:flutter/material.dart';
import 'package:oua_project/loginFile/LoginPage.dart';
import 'package:oua_project/mainPage.dart';



void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
