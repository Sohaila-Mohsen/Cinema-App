import 'package:flutter/material.dart';

class TimeElement extends StatelessWidget {
  String? time;
  TimeElement(this.time);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        padding: EdgeInsets.all(2),
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(161, 0, 187, 212)),
            borderRadius: BorderRadius.circular(7)),
        child: Center(
          child: Text(
            time.toString(),
            style: const TextStyle(color: Colors.white),
          ),
        ));
  }
}
