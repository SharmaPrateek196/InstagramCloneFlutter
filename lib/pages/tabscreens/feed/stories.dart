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

class StoriesHeading extends StatelessWidget {
  const StoriesHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class StoryThumbnail extends StatefulWidget {
  const StoryThumbnail(
      {Key? key, required this.hasSeen, required this.imageUrl})
      : super(key: key);

  final bool hasSeen;
  final String imageUrl;

  @override
  _StoryThumbnailState createState() => _StoryThumbnailState();
}

class _StoryThumbnailState extends State<StoryThumbnail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: NetworkImage(widget.imageUrl), fit: BoxFit.fill),
      ),
    );
  }
}
