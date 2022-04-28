import 'package:cinema/blocs/cubit/reservation_cubit.dart';
import 'package:cinema/components/timeElement.dart';
import 'package:cinema/views/home_page.dart';
import 'package:flutter/material.dart';
import '../models/films.dart';
import 'dayElement.dart';

class DayTimeElement extends StatelessWidget {
  Film film;
  ReservationCubit reservationCubit;
  DayTimeElement({required this.film, required this.reservationCubit});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(60)),
          color: const Color.fromARGB(255, 53, 53, 53)),
      child: Column(
        children: [
          Text(
            "Select Date and Time",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.w900),
          ),
          Expanded(child: SizedBox()),
          Container(
            height: 90,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: (film.showDays!.length) * 70,
                child: GridView.builder(
                  itemCount: film.showDays!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: film.showDays!.length,
                  ),
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: (() {
                        print(film.name! + index.toString());
                        reservationCubit.chooseDay(index);
                        print(reservationCubit.choseDay.toString());
                      }),
                      child: DayElement(
                        day: film.showDays![index].day.toString(),
                        month: film.showDays![index].month.toString(),
                      )),
                ),
              ),
            ),
          ),
          (reservationCubit.choseDay == true)
              ? Container(
                  padding: EdgeInsets.only(bottom: 10),
                  height: 80,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      width: (film.showDays![reservationCubit.showDayIndex!]
                              .showTimes!.length) *
                          63,
                      child: GridView.builder(
                        itemCount: film
                            .showDays![reservationCubit.showDayIndex!]
                            .showTimes!
                            .length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: film
                              .showDays![reservationCubit.showDayIndex!]
                              .showTimes!
                              .length,
                        ),
                        itemBuilder: (context, index) => GestureDetector(
                            onTap: (() {
                              reservationCubit.chooseTime(index);
                            }),
                            child: TimeElement(film
                                .showDays![reservationCubit.showDayIndex!]
                                .showTimes![index]
                                .time
                                .toString())),
                      ),
                    ),
                  ),
                )
              : Expanded(child: SizedBox()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 111, 111, 111)),
                  ),
                  Text(
                    "${film.price! * ((reservationCubit.selectedA.length) + (reservationCubit.selectedB.length))}\$",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("Book Ticket"),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
