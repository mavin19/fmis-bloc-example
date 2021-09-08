import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final AssetImage image;
  final String name;
  final String chat;
  final String notificationNumber;
  final String time;

  const ChatItem({
    required this.image,
    required this.name,
    required this.chat,
    required this.notificationNumber,
    required this.time,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: image,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Text(
                  chat,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  notificationNumber,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),

          ],
        )
      ],
    );
  }
}
