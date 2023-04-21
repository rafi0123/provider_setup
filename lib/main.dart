import 'package:flutter/material.dart';
import 'package:learn_provider/provider/count_provider.dart';
import 'package:learn_provider/provider/favourit_provider.dart';
import 'package:learn_provider/provider/slider_provider.dart';
import 'package:learn_provider/provider/theme_provider.dart';
import 'package:learn_provider/views/home/home_view.dart';
import 'package:learn_provider/views/home/theme_changer/theme_changer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => CountProvider()),
          ChangeNotifierProvider(create: (context) => SliderProvider()),
          ChangeNotifierProvider(create: (context) => FavouritProvider()),
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ],
        child: Builder(builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Provider',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              useMaterial3: true,
              brightness: Brightness.light,
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                iconTheme: const IconThemeData(color: Colors.red),
                appBarTheme: const AppBarTheme(color: Colors.teal),
                ),
            home: const HomeView(),
          );
        }));
  }
}
