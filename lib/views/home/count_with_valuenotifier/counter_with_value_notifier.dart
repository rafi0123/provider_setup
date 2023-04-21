import 'package:flutter/material.dart';

class CounterWithValueNotifier extends StatelessWidget {
  CounterWithValueNotifier({super.key});

  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  final ValueNotifier<bool> toggle = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ValueListenableBuilder(
              valueListenable: toggle,
              builder: (context, value, child) {
                return TextFormField(
                  obscureText: toggle.value,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                    onTap: () {
                      toggle.value = !toggle.value;
                    },
                    child: Icon(
                        toggle.value ? Icons.visibility_off : Icons.visibility),
                  )),
                );
              }),
          Center(
              child: ValueListenableBuilder(
            valueListenable: _counter,
            builder: (context, value, child) {
              return Text(
                _counter.value.toString(),
                style: const TextStyle(fontSize: 30),
              );
            },
          ))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
