import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String input;
  final int age;
  static final String id="second_page";
  const SecondPage({super.key,required this.input,required this.age});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
             widget.input,
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
          ),
          Center(
            child: Text(
             widget.age.toString(),
              style: TextStyle(fontSize: 40, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
