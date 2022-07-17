import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/wordle/views/wordle_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Woodle App',
      debugShowCheckedModeBanner: false, 
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      home: const WordleScreen());
  }
}