import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  Color backgroundcolor =Colors.white38;

  // final List<String> _items = [];
  // void addItem(){
  //   setState(() {
  //     int index = _items.length + 1;
  //     _items.add('Item $index');
  //   });
  // }

  void changeBackgroundColor() {
    setState(() {
      backgroundcolor = Color ((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
      // List colors = [Colors.purple,Colors.orange,Colors.amber];
      // Random random = new Random();
    });
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: GestureDetector(
        onTap: changeBackgroundColor,
        child: Container(
          color: backgroundcolor,
          child: const Center(
            child: Text('Hello there',style: TextStyle(fontSize: 26),
            ),
          ),
        ),
     ),
    ));
  }
}


