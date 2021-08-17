import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/tabscreens/feed/post.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  _FeedsScreenState createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: InstagramPost(),
        );
      },
    );
  }
}
