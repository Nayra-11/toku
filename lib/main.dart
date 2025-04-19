import 'package:flutter/material.dart';

import 'screens/homepage.dart';

void main() {
  runApp(const Toku_app());
}

class Toku_app extends StatelessWidget {
  const Toku_app({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
