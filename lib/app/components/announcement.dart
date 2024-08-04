import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Announcement extends StatelessWidget {
  final String title, content;
  final DateTime createdDate;
  const Announcement({required this.title, required this.content, required this.createdDate});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    content,
                    // maxLines: 2,
                    // overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5),
                  Text(
                    DateFormat('dd-MM-yyyy hh:mm a').format(createdDate),
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(width: 100),

          ],
        ),
      ),
    );
  }
}