import 'package:flutter/material.dart';

class InstagramPost extends StatefulWidget {
  const InstagramPost({Key? key}) : super(key: key);

  @override
  _InstagramPostState createState() => _InstagramPostState();
}

class _InstagramPostState extends State<InstagramPost> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PostHeader extends StatelessWidget {
  const PostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //DpTitleContainer()
      ],
    );
  }
}
