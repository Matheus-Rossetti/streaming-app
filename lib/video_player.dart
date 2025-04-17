import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  String video =
      'https://pub-a3c35b512f2f4144a214e78c51b2e542.r2.dev/output.m3u8';

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(video))
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    if (_controller.value.isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: _togglePlayPause,
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
          ),
          Center(
            child: Text(
              'Extremamente rudimentar',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('Não da pra pausar'),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('Não da pra avançar'),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('Não da pra voltar'),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('Não da pra escolher qualidade'),
          ),
          Padding(padding: EdgeInsets.all(20), child: Text('Foda-se')),
        ],
      ),
    );
  }
}
