import 'package:flutter/material.dart';

class Lesson5 extends StatefulWidget {
  const Lesson5({super.key});

  @override
  State<Lesson5> createState() => _Lesson5State();
}

class _Lesson5State extends State<Lesson5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lesson 5"),
        ),
        body: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 3,
          children: [
            itemPost(image: "assets/person1.jpg",text: "Person1"),
            itemPost(image: "assets/person2.jpg",text: "Person2"),
            itemPost(image: "assets/person3.jpg",text: "Person3"),
            itemPost(image: "assets/person1.jpg",text: "Person4"),
            itemPost(image: "assets/person1.jpg",text: "Person5"),
            itemPost(image: "assets/person1.jpg",text: "Person6"),
            itemPost(image: "assets/person1.jpg",text: "Person1"),
            itemPost(image: "assets/person1.jpg",text: "Person1"),
            itemPost(image: "assets/person1.jpg",text: "Person1"),
            itemPost(image: "assets/person1.jpg",text: "Person1"),
            itemPost(image: "assets/person1.jpg",text: "Person1"),
            itemPost(image: "assets/person1.jpg",text: "Person1"),
            itemPost(image: "assets/person1.jpg",text: "Person1"),
          ],
        ));
  }

  Widget itemPost({image, text}) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage(image)
              )
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 16),
          )
        ],
      ),
    );
  }
}
