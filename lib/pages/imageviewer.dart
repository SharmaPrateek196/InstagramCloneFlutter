import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({Key? key, required this.assetPath}) : super(key: key);

  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image.asset(assetPath),
      ),
    );
  }
}
