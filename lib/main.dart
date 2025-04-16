import 'package:flutter/material.dart';
import 'package:streaming_app/video_player.dart';

void main() {
  runApp(const StreamingApp());
}

// COLORS: 0xff430027, B13123, CE6627, BFA08E, 300227

class StreamingApp extends StatelessWidget {
  const StreamingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      checkerboardOffscreenLayers: false,
      title: 'Streaming App',
      home: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 500),
          child: MainMenu(),
        ),
      ),
    );
  }
}

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              'Streaming App',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color(0xffB13123),
            pinned: true,
            floating: true,
            expandedHeight: 200,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ContainerCard(index: index),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerCard extends StatefulWidget {
  const ContainerCard({super.key, required this.index});

  final int index;

  @override
  State<ContainerCard> createState() => _ContainerCardState();
}

class _ContainerCardState extends State<ContainerCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VideoPlayerScreen()),
          );
        },
        child: Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffBFA08E),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '- CLIQUE AQUI - Único video que tem, compilado de The Finals. Não tem thumbnail :(',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
