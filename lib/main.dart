import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  double? dice;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: Column(children: [
          Text("$dice"),
          ElevatedButton(
            onPressed: () {
              setState(() {
                dice = Random().nextInt(6) + 1;
              });
            },
            child: const Text("Click"),
          ),
          Image.asset("/dice${dice}.png")
        ]),
      ),
    );
  }
}
