import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp( // #1 Root Material app: sets app theme, title, and home screen
        home: Scaffold( // #2 Main page structure: provides AppBar, Body, background, etc.
          appBar: AppBar( // #3 Top app bar: shows the title and optional actions
            title: Text('Flutter'), // #4 Displays 'Flutter' text in the AppBar
          ),
          body: Center( // #7 Centers its child widget both vertically and horizontally
            child: Row( // #5 Horizontal layout: arranges children side by side
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column( // #6 Vertical layout: arranges children top to bottom
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container( // #8 Box container: allows styling, padding, and size for child widget
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Box 1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container( // #8 Another container example
                      width: 100,
                      height: 100,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Box 2',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
