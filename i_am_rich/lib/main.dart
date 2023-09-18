import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage('https://premium.vgc.no/v2/images/22321cb3-cba7-49b8-ab7c-eca4391e8b7b?fit=crop&format=auto&h=1418&w=2048&s=173671447029bc19e3ad9e1db59b7de4c71df401') 
          ),
        ),
      ),
    )
  );
}

