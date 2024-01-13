import 'package:flutter/material.dart';
import 'package:lesson_3_g2/home_page.dart';
import 'package:lesson_3_g2/second_page.dart';
import 'leson_4.dart';
import 'lesson_5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      routes: {
          HomePage.id:(context)=>HomePage(),
          SecondPage.id:(context)=>SecondPage(input: "",age: 0,),
      },


    );
  }
}
