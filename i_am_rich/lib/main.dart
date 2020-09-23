import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//starting point for every app.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("I Am Rich"),
          ),
          backgroundColor: Colors.grey[900],
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Image(
            image: AssetImage('images/dollar.png'),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50.0,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          tooltip: 'Gain more',
          child: const Icon(Icons.add),
        ),
      ),
    ),
  );
}
