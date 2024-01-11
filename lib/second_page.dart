import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String input;
  static final String id="second_page";
  const SecondPage({super.key,required this.input});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
         widget.input,
          style: TextStyle(fontSize: 40, color: Colors.black),
        ),
      ),
    );
  }
}
