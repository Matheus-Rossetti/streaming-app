import 'package:flutter/material.dart';

class VideoCard extends StatefulWidget {

  final int index;
  const VideoCard({super.key, required this.index});

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: LayoutBuilder(
        builder:
            (context, constraints) => ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Image.network( // TODO change for cached_image_network package
                    'https://picsum.photos/1280/720?random=${widget.index}',
                    width: constraints.maxHeight * 16 / 9,
                  ),
                  Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Nome do vídeo',
                        style: TextStyle(

                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),),
                  ),

                ],
              ),
            ),
      ),
    );
  }
}
