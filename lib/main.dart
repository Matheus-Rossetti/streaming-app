import 'package:flutter/material.dart';
import 'package:streaming_app/video_player.dart';

import 'home_screen.dart';

void main() {
  runApp(const StreamingApp());
}

// COLORS: 0xff430027, B13123, CE6627, BFA08E, 300227

class StreamingApp extends StatefulWidget {
  const StreamingApp({super.key});

  @override
  State<StreamingApp> createState() => _StreamingAppState();
}

class _StreamingAppState extends State<StreamingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      checkerboardOffscreenLayers: false,
      title: 'Toscaflix',
      home: HomeScreen(),
    );
  }
}


