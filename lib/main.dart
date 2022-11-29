import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Magic 8 Ball',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        body: const Magic(),
      ),
    );
  }
}

class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  State<Magic> createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int num = 1;

  void change(){
    num=Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade300,
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              change();
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("images/ball$num.png"),
          ),
        ),
      ),
    );
  }
}
