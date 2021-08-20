class StoryModel {
  StoryModel(this.hasSeen, this.url);
  bool hasSeen;
  String url;
}

class PostModel {
  PostModel(this.username, this.userImg, this.postImg, this.isLiked);
  String userImg, postImg, username;
  bool isLiked;
}

List feedData = [
  PostModel(
    "Prateek",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    false,
  ),
  PostModel(
    "Prateek",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    false,
  ),
  PostModel(
    "Prateek",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    false,
  ),
  PostModel(
    "Prateek",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    false,
  ),
  PostModel(
    "Prateek",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    false,
  ),
  PostModel(
    "Prateek",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    false,
  ),
  PostModel(
    "Prateek",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    "https://pbs.twimg.com/profile_images/799664820848992256/QX3Pjg3V_400x400.jpg",
    false,
  ),
];
