import 'package:cinema/components/category_element.dart';
import 'package:cinema/components/film_slide_show_element.dart';
import 'package:cinema/models/categories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const TextStyle textStyle = TextStyle(
      color: Color.fromARGB(179, 255, 255, 255),
      fontWeight: FontWeight.w700,
      fontSize: 15);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Color.fromRGBO(0, 0, 0, 0.871),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromARGB(236, 255, 255, 255),
                        )),
                    Text(
                      "Movie Detail",
                      style:
                          TextStyle(color: Color.fromARGB(236, 255, 255, 255)),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.bookmark,
                            color: Color.fromARGB(236, 255, 255, 255))),
                  ],
                ),
                Container(
                  height: 40,
                  width: 320,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 145, 145, 145).withOpacity(0.3),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Text(
                        "      Search",
                        style: TextStyle(
                            color: Color.fromARGB(235, 164, 164, 164),
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                            color: Color.fromARGB(235, 207, 207, 207),
                            fontWeight: FontWeight.w900,
                            fontSize: 17),
                      ),
                      TextButton(onPressed: () {}, child: Text("See All  >"))
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 120,
                    width: 600,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: catigories.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CategoryElement(catigories[index]);
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 30,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "Showing This Month",
                  style: textStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                FilmSlideShowElement(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
