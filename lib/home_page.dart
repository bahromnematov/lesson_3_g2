import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 250,
                width: 250,
                color: Colors.brown,
                child: Column(
                  children: [
                    Expanded(child: Container(color: Colors.red,)),
                    Expanded(child: Container(color: Colors.green,)),
                    Expanded(child: Container(color: Colors.deepPurple,)),
                    Expanded(child: Container(color: Colors.orange,)),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
