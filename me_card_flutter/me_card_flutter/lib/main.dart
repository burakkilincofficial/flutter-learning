import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.max,
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            verticalDirection: VerticalDirection.down,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                color: Colors.blue,
                child: Text('Container 1'),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                color: Colors.red,
                child: Text('Container 2'),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                color: Colors.yellow,
                child: Text('Container 3'),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                color: Colors.green,
                child: Text('Container 4'),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                color: Colors.white,
                child: Text('Container 4'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
