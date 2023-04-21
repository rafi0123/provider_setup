import 'package:flutter/material.dart';
import 'package:learn_provider/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeChanger extends StatefulWidget {
  const ThemeChanger({super.key});

  @override
  State<ThemeChanger> createState() => _ThemeChangerState();
}

class _ThemeChangerState extends State<ThemeChanger> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            RadioListTile<ThemeMode>(
                title: const Text('Light Mode'),
                value: ThemeMode.light,
                groupValue: themeChanger.themeMode,
                onChanged: themeChanger.setTheme),
            RadioListTile<ThemeMode>(
                title: const Text('Dark Mode'),
                value: ThemeMode.dark,
                groupValue: themeChanger.themeMode,
                onChanged: themeChanger.setTheme),
            RadioListTile<ThemeMode>(
                title: const Text('System Mode'),
                value: ThemeMode.system,
                groupValue: themeChanger.themeMode,
                onChanged: themeChanger.setTheme),
            const Icon(Icons.favorite),
          ],
        ),
      )),
    );
  }
}
