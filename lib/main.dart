import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 204, 8, 161),
          title: const Center(
            child: Text(
              'Bible Confession Game',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 14,
                wordSpacing: 5,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: const BcgPage(),
      ),
    ),
  );
}

class BcgPage extends StatefulWidget {
  const BcgPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BcgPageState createState() => _BcgPageState();
}

class _BcgPageState extends State<BcgPage> {
  int rightNumber = 21;

  void changeBcgFace() {
    setState(() {
      rightNumber = Random().nextInt(22) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/guide.png',
              ),
              onPressed: () {},
            ),
          ),
          //Get students to create the second die as a challenge
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/g$rightNumber.png',
              ),
              onPressed: () {
                changeBcgFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}
