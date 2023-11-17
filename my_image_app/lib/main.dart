import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[700],
          title: Text("Diamonds"),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/main_img.png'),
          ),
        ),
      ),
    ),
  );
}
