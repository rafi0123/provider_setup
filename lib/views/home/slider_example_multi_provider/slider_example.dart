import 'package:flutter/material.dart';
import 'package:learn_provider/provider/slider_provider.dart';
import 'package:provider/provider.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  @override
  Widget build(BuildContext context) {
    // final sliderProvider = Provider.of<SliderProvider>(context, listen: false);
    debugPrint('build');
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SliderProvider>(builder: (context, val, child) {
              return Slider(
                  value: val.val,
                  onChanged: (value) {
                    val.setValue(value);
                  });
            }),
            const SizedBox(
              height: 20,
            ),
            Consumer<SliderProvider>(builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 100,
                    color: Colors.red.withOpacity(value.val),
                  )),
                  Expanded(
                      child: Container(
                    height: 100,
                    color: Colors.green.withOpacity(value.val),
                  )),
                ],
              );
            })
          ],
        ),
      )),
    );
  }
}
