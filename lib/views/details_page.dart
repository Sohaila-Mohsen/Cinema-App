import 'package:cinema/components/details_element.dart';
import 'package:cinema/models/films.dart';
import 'package:cinema/views/ReservationPage.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  Film film;
  DetailsPage(this.film);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Container(
                color: Color.fromRGBO(0, 0, 0, 0.871),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
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
                          style: TextStyle(
                              color: Color.fromARGB(236, 255, 255, 255)),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.bookmark,
                                color: Color.fromARGB(236, 255, 255, 255))),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 300,
                          width: 190,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: film.image, fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                        ),
                        Column(
                          children: [
                            DetailsElement(
                              icon: Icon(Icons.videocam_rounded,
                                  color: Color.fromARGB(236, 255, 255, 255)),
                              main: film.category!.categoryName,
                              subtitle: "Gern",
                            ),
                            DetailsElement(
                              icon: Icon(Icons.watch_later,
                                  color: Color.fromARGB(236, 255, 255, 255)),
                              main: film.duration,
                              subtitle: "Duration",
                            ),
                            DetailsElement(
                              icon: Icon(Icons.star_rate_rounded,
                                  color: Color.fromARGB(236, 255, 255, 255)),
                              main: film.rating,
                              subtitle: "Rating",
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 30, top: 10),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 0.3,
                                color: Color.fromARGB(179, 179, 179, 179))),
                      ),
                      child: Row(
                        children: [
                          Text(
                            film.name.toString(),
                            style: TextStyle(
                                color: Color.fromARGB(236, 255, 255, 255),
                                fontWeight: FontWeight.w900,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 70, horizontal: 10),
                      child: Text(
                        film.discription.toString(),
                        style: TextStyle(
                            color: Color.fromARGB(235, 188, 188, 188),
                            fontSize: 13),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.black.withOpacity(0.4)),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ReservationPage(film: this.film)));
                  },
                  child: Text("Get Reservation"),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
