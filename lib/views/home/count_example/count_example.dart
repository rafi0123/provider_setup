import 'package:flutter/material.dart';
import 'package:learn_provider/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  // This will build a count value with increments

  // @override
  // void initState() {
  //   super.initState();
  //   Timer.periodic(const Duration(seconds: 0), (timer) {
  //     final countProvider = Provider.of<CountProvider>(context, listen: false);
  //     countProvider.setCount();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Consumer<CountProvider>(builder: (context, value, child) {
            return Text(
              value.count.toString(),
              style: const TextStyle(fontSize: 30, color: Colors.black),
            );
          }),
        ])),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
