import 'package:flutter/material.dart';
import 'package:lesson_3_g2/second_page.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future _openPage() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext contetx) {
      return SecondPage(input: "Flutter",age: 21,);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // _openPage();
            Navigator.pushNamed(context, SecondPage.id);
          },
          child: Text(
            "Next Page",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
