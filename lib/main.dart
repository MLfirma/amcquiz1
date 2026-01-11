import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp( // #1 Root Material app: sets app title, theme, and first screen
        title: 'Week 1 - All 8 Widgets',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: const HomeScreen(),
      );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold( // #2 Main page structure: provides app bar, body, background, etc.
        appBar: AppBar( // #3 Top app bar: displays title and optional actions
          title: const Text('All Widgets'), // #4 Displays 'All Widgets' in the AppBar
        ),
        body: Center( // #7 Centers its child widget both vertically and horizontally
          child: Container( // #8 Box container: allows styling, padding, and alignment for child widgets
            padding: const EdgeInsets.all(20),
            child: Column( // #6 Vertical layout: arranges children top to bottom
              children: [
                Row( // #5 Horizontal layout: arranges children side by side
                  children: [
                    const Icon(Icons.star), // Icon inside the Row
                    const Text('Flutter'), // #4 Displays 'Flutter' text inside Row
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
