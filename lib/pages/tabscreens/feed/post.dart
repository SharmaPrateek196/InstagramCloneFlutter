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
        Image(
          height: 300,
          image: NetworkImage(
              "https://images.unsplash.com/photo-1607981513835-f5cb460cbc4a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80"),
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
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              new ProfilePicture(
                imageUrl:
                    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
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
