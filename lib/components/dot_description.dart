import 'package:flutter/material.dart';

class DotDescription extends StatelessWidget {
  const DotDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          buildColumn(Colors.white, "Select"),
          buildColumn(Colors.cyan, "Reserved"),
          buildColumn(Colors.grey, "Available"),
        ],
      ),
    );
  }

  Widget buildColumn(Color color, String dis) => Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 8,
            ),
            Text(
              dis,
              style: TextStyle(fontSize: 10, color: Colors.grey),
            )
          ],
        ),
      );
}
