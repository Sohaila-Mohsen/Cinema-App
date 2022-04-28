import 'package:cinema/models/categories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryElement extends StatelessWidget {
  CategoryElement(this.category);
  MovieCategory category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromARGB(255, 54, 54, 54),
            ),
            child: Center(
              child: Text("${category.emoji}",
                  style: TextStyle(
                      color: Color.fromARGB(236, 255, 255, 255),
                      fontWeight: FontWeight.w900,
                      fontSize: 17)),
            ),
          ),
          Text(
            "${category.categoryName}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Color.fromARGB(235, 174, 174, 174),
                fontWeight: FontWeight.w700,
                fontSize: 11),
          )
        ],
      ),
    );
  }
}
