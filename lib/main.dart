import 'package:flutter/material.dart';

import 'pages/tabscreens/home.dart';

void main() {
  runApp(Insta());
}

class Insta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      home: new InstagramHome(),
    );
  }
}
