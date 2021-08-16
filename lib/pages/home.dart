import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/add.dart';
import 'package:instagram_flutter/pages/favourite.dart';
import 'package:instagram_flutter/pages/feed.dart';
import 'package:instagram_flutter/pages/profile.dart';
import 'package:instagram_flutter/pages/search.dart';

class InstagramHome extends StatefulWidget {
  const InstagramHome({Key? key}) : super(key: key);

  @override
  State<InstagramHome> createState() => _InstagramHomeState();
}

class _InstagramHomeState extends State<InstagramHome> {
  int _selectedIndex = 0;

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

  final List<Widget> bottomBarScreens = [
    FeedsScreen(),
    SearchScreen(),
    AddScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: bottomBarScreens[_selectedIndex],
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
