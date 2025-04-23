import 'package:flutter/material.dart';

import 'video_card.dart';

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
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Expanded(
          child: Container(
            color: Colors.grey[200],
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [CircleAvatar(child: ClipOval(child: Image.network('https://picsum.photos/200'))), SizedBox(width: 10), Text('Nome do usuário')],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder:
                          (context, index) => VideoCard(index: index),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
