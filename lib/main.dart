import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue.shade300,
        ),
        body: Ballpage(),
      ),
    ),
  );
}

class Ballpage extends StatefulWidget {
  //const Ballpage({super.key});

  @override
  State<Ballpage> createState() => _BallpageState();
}

class _BallpageState extends State<Ballpage> {
  int ballNumber = 5;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5)+1;
              });
            },
            child: Image.asset('assets/images/ball$ballNumber.png'),
          ),
        ),
      ],
    );
  }
}
