import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lesson4 extends StatefulWidget {
  const Lesson4({super.key});

  @override
  State<Lesson4> createState() => _Lesson4State();
}

class _Lesson4State extends State<Lesson4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
         if(Platform.isAndroid){
           androidDialog();
         }else if(Platform.isIOS){
           IosDialog(context);
         }

          },
          child: Text("Dialog"),
        ),
      ),
    );
  }

  void androidDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Log Out"),
            content: Text("Confirm tugmasini bossez account uchib ketdi"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Confirm",
                    style: TextStyle(color: Colors.blueAccent),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.blueAccent),
                  ))
            ],
          );
        });
  }

  void IosDialog(BuildContext context){
    showCupertinoModalPopup(context: context, builder: (BuildContext contetx){
      return CupertinoAlertDialog(
        title: Text("Log Out"),
        content: Text("Cancel tugmasini bosilsa dialog yopiladi"),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: (){
              Navigator.pop(context);
            },
              child: Text("Confirm",style: TextStyle(color: Colors.red),)),
          CupertinoDialogAction(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Cancel",style: TextStyle(color: Colors.blueAccent),))
        ],
      );

    });
  }
}
