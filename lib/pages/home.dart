import 'package:flutter/material.dart';

class InstagramHome extends StatelessWidget {
  final AppBar topBar = AppBar(
    title: Image.asset(
      "assets/images/insta_logo.png",
      height: 40.0,
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(Icons.camera_alt),
      onPressed: null,
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.send),
        onPressed: null,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box,
              color: Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
