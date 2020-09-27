import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

String isSixBoth(int n1, int n2) {
  if (n1 * n2 == 36) {
    return 'LUCKY YOU!';
  } else if (n1 * n2 == 1) {
    return 'LOSEERR! :(';
  } else {
    return '';
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lefDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceFace() {
    setState(() {
      lefDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            splashColor: Colors.blue,
            child: Text('Try it'),
            color: Colors.white,
            onPressed: () {
              changeDiceFace();
            },
          ),
          SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset('images/dice$lefDiceNumber.png'),
                ),
                SizedBox(width: 15),
                Expanded(
                  flex: 1,
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  '$lefDiceNumber',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
                Text(
                  '$rightDiceNumber',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          Card(
            color: Colors.red,
            child: Text(
              'Multiply = ' + (lefDiceNumber * rightDiceNumber).toString(),
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          SizedBox(height: 10),
          Card(
            color: Colors.red,
            child: Text(
              isSixBoth(lefDiceNumber, rightDiceNumber),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.yellow),
            ),
          )
        ],
      ),
    );
  }
}
