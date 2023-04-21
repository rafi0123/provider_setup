import 'package:flutter/material.dart';
import 'package:learn_provider/views/home/count_example/count_example.dart';
import 'package:learn_provider/views/home/count_with_valuenotifier/counter_with_value_notifier.dart';
import 'package:learn_provider/views/home/slider_example_multi_provider/slider_example.dart';
import 'package:learn_provider/views/home/theme_changer/theme_changer.dart';
import 'package:learn_provider/views/home/why_state_management/example.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text('Why to Leard State Mangement'),
            MaterialButton(
              color: Colors.tealAccent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Example())));
              },
              child: const Text(
                'Example',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Count example with Provider'),
            MaterialButton(
              color: Colors.tealAccent,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const CountExample())));
              },
              child: const Text(
                'Example',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Slider Example with Provider'),
            MaterialButton(
              color: Colors.tealAccent,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const SliderExample())));
              },
              child: const Text(
                'Example',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Slider Example with ThemeData Provider'),
            MaterialButton(
              color: Colors.tealAccent,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ThemeChanger())));
              },
              child: const Text(
                'Example',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Counter with value notifier'),
            MaterialButton(
              color: Colors.tealAccent,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => CounterWithValueNotifier())));
              },
              child: const Text(
                'Notifier',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      )),
    );
  }
}
