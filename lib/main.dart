import 'package:flutter/material.dart';
import 'package:project3/app/screens/introduction/view/introduction_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => IntroPage(),
        //   'main': (context) => Example(),
      },
    ),
  );
}
