import 'package:flutter/material.dart';
import 'dart:ui';

class Option1 extends StatefulWidget {
  @override
  _Option1State createState() => _Option1State();
}

class _Option1State extends State<Option1> with TickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = Tween<double>(begin: 0, end: -300)
        .animate(animationController as Animation<double>)
      ..addListener(() {
        setState(() {});
      });

    animationController!.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        animationController!.repeat();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/person1.jpg'), fit: BoxFit.cover)),
        ),
        Align(
          alignment: AlignmentDirectional(0, 0.7),
          child: Transform.translate(
            offset: Offset(0, animation!.value),
            child: Container(
              height: 250,
              width: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/person2.jpg'),
              )),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              animationController!.forward();
            },
            child: Text('Go'),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }
}
