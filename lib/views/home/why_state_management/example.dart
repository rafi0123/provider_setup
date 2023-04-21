import 'dart:async';
import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int x = 0;
  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(milliseconds: 10), (timer) {
      x++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // all the state tree is building for changing with one text
    debugPrint('build');
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$x',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      ))),
    );
  }
}
