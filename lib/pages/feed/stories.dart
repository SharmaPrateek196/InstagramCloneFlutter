import 'package:flutter/material.dart';

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
