import 'package:flutter/material.dart';
import 'package:vazifa3/pages/first_page.dart';
import 'package:vazifa3/pages/seacond_page.dart';
import 'package:vazifa3/pages/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        routes: {
          "/first": (context) => const FirstPage(),
          "/seacond": (context) => const SeacondPage(),
          "/third": (context) =>const ThirdPage(),
        },
      home:const FirstPage(),
    );
  }
}
