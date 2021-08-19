import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

double postHeaderDpSize = 50;
double commenterDpSize = 20;

class InstagramPost extends StatefulWidget {
  const InstagramPost({Key? key}) : super(key: key);

  @override
  _InstagramPostState createState() => _InstagramPostState();
}

class _InstagramPostState extends State<InstagramPost> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new PostHeader(),
        Image.asset(
          "assets/images/lappyimg.jpeg",
          fit: BoxFit.fill,
          height: 350,
          width: double.infinity,
        ),
      ],
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture(
      {Key? key,
      required this.imageUrl,
      required this.width,
      required this.height})
      : super(key: key);

  final String imageUrl;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.fill),
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  const PostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              new ProfilePicture(
                imageUrl:
                    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
                width: postHeaderDpSize,
                height: postHeaderDpSize,
              ),
              SizedBox(
                width: 10,
              ),
              new Text(
                "Username",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          new Icon(Icons.more_vert)
        ],
      ),
    );
  }
}

class PostFooter extends StatefulWidget {
  const PostFooter({Key? key}) : super(key: key);

  @override
  _PostFooterState createState() => _PostFooterState();
}

class _PostFooterState extends State<PostFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(FontAwesomeIcons.heart),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(FontAwesomeIcons.comment),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(FontAwesomeIcons.paperPlane)
                ],
              ),
              Icon(FontAwesomeIcons.bookmark)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ProfilePicture(
                imageUrl:
                    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
                width: commenterDpSize,
                height: commenterDpSize,
              ),
              SizedBox(
                width: 10,
                height: 2,
              ),
              Text("Liked by be_like__prateek and 97 others"),
            ],
          ),
          Text(
            "View all 1,256 comments",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
