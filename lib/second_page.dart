import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Smart Star"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.blue,
          child: Container(
            height: 400,
            color: Colors.black,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.blue,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.black,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.blue,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.black,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.blue,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.black,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.blue,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.black,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                )),
              ],
            ),
          ),
        ));
  }
}
