import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/feed/stories.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  _FeedsScreenState createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: getStoriesHeading(),
    );
  }
}
