import 'package:flutter/material.dart';
import '/video_player.dart';


class UserVideosCard extends StatefulWidget {
  const UserVideosCard({super.key, required this.index});

  final int index;

  @override
  State<UserVideosCard> createState() => _UserVideosCardState();
}

class _UserVideosCardState extends State<UserVideosCard> {
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