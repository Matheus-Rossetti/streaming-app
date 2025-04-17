import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key, required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding( // TODO Fix this padding, for some reason it changes the aspect ratio if applied for top and bottom
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text('h: $height | w: $width')),
      ),
    );
  }
}
