import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_flutter/data/feeds_data.dart';

class StoriesPalatte extends StatefulWidget {
  StoriesPalatte();

  @override
  _StoriesPalatteState createState() => _StoriesPalatteState();
}

class _StoriesPalatteState extends State<StoriesPalatte> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        StoriesHeading(),
        Container(
          height: 70,
          alignment: Alignment.center,
          child: Expanded(
            child: new ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: StoryThumbnail(
                    hasSeen: true,
                    imageUrl:
                        "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
                  ),
                );
              },
            ),
          ),
        )
      ]),
    );
  }
}

class StoriesHeading extends StatelessWidget {
  const StoriesHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
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
      margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: NetworkImage(widget.imageUrl), fit: BoxFit.fill),
      ),
    );
  }
}
