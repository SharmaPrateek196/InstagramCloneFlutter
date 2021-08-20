import 'package:flutter/material.dart';
import 'package:instagram_flutter/data/feeds_data.dart';
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
    //return PostFooter();

    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 100,
              child: ListView.builder(
                itemCount: feedData.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Container(
                      child: StoriesPalatte(),
                    );
                  } else {
                    return Container(
                      child: InstagramPost(feedData[index]),
                    );
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
