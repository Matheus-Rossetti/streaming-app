import 'package:flutter/material.dart';
import 'widgets/user_videos_card.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.orange,
            pinned: true,
            floating: true,
            expandedHeight: 200,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Toscaflix',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => UserVideosCard(index: index),
            ),
          ),
        ],
      ),
    );
  }
}

