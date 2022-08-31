import 'dart:math';
import "../../auth/sign_in.dart";

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int leftdiceroll = 1;
  int rightdiceroll = 1;

  void Dice() {
    setState(() {
      leftdiceroll = Random().nextInt(6) + 1;
      rightdiceroll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("Dice Game"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Image.asset("assets/dice$leftdiceroll.png")),
                  SizedBox(
                    width: 30.0,
                  ),
                  Expanded(child: Image.asset("assets/dice$rightdiceroll.png")),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  child: Text(
                    "Roll Dicer",
                    textScaleFactor: 2,
                  ),
                  onPressed: () {
                    Dice();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
