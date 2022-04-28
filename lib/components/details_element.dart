import 'package:flutter/material.dart';

class DetailsElement extends StatelessWidget {
  Icon? icon;
  String? main;
  String? subtitle;
  DetailsElement({this.icon, this.main, this.subtitle});

  @override
  Widget build(BuildContext context) {
    print("main = ${main}");
    return Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Color.fromARGB(255, 53, 53, 53))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon!,
          Text(
            subtitle!,
            style: TextStyle(color: Colors.grey, fontSize: 11),
          ),
          Text(
            main!,
            style: TextStyle(fontSize: 11, color: Colors.white),
          )
        ],
      ),
    );
  }
}
