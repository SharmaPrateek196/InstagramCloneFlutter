import 'package:flutter/material.dart';

class StoriesPalatte extends StatefulWidget {
  const StoriesPalatte({Key? key}) : super(key: key);

  @override
  _StoriesPalatteState createState() => _StoriesPalatteState();
}

class _StoriesPalatteState extends State<StoriesPalatte> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget getStoriesHeading() {
  return Container(
    margin: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Stories",
          textAlign: TextAlign.start,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "Watch All",
          textAlign: TextAlign.end,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

Widget getStoryThumbnail(String url, bool hasSeen) {
  return Container(
    width: 80,
    height: 80,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(image: NetworkImage(url), fit: BoxFit.fill),
    ),
  );
}
