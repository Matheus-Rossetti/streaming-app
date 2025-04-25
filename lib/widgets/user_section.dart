import 'package:flutter/material.dart';

import 'video_card.dart';

class UserSection extends StatelessWidget {
  const UserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Container(
        height: 200,
        width: double.infinity,
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
    );
  }
}
