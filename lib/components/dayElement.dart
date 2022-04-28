import 'package:flutter/material.dart';

class DayElement extends StatelessWidget {
   DayElement({
    this.day,this.month
  });
  String? month;
  String? day;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 30,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.cyan,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(month.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 11)),
          const SizedBox(
            height: 5,
          ),
          CircleAvatar(
              backgroundColor: Colors.white,
              radius: 12,
              child: Text(
                day.toString(),
              )),
        ],
      ),
    );
  }
}
