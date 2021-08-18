import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/tabscreens/feed/post.dart';
import 'package:instagram_flutter/pages/tabscreens/feed/stories.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  _FeedsScreenState createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          StoriesPalatte(),
          Expanded(
            child: Container(
              height: 100,
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: InstagramPost(),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
