import 'package:flutter/material.dart';

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
  const ProfilePicture({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
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
