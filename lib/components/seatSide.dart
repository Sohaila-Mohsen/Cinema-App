import 'package:cinema/blocs/cubit/reservation_cubit.dart';
import 'package:flutter/material.dart';

import '../models/films.dart';

class SeatSide extends StatelessWidget {
  Film film;
  ReservationCubit reservationCubit;
  String side;
  SeatSide(
      {required this.film, required this.reservationCubit, required this.side});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 24,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) => (reservationCubit.choseDay == true &&
                reservationCubit.choseTime == true)
            // ignore: iterable_contains_unrelated_type
            ? ((film.showDays![reservationCubit.showDayIndex!]
                        .showTimes![reservationCubit.showTimeIndex!]
                        .isReserved(index) &&
                    film.showDays![reservationCubit.showDayIndex!]
                            .showTimes![reservationCubit.showTimeIndex!]
                            .seatOfReserved(index) ==
                        side)
                ? (Container(
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(10)),
                    height: 5,
                    width: 5,
                    margin: const EdgeInsets.all(3),
                  ))
                : GestureDetector(
                    onTap: () {
                      if (side == "A")
                        reservationCubit.addSelectedA(index);
                      else if (side == "B")
                        reservationCubit.addSelectedB(index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: ((side == "A")
                                  ? reservationCubit.selectedA.contains(index)
                                  : reservationCubit.selectedB.contains(index))
                              ? Colors.white
                              : Color.fromARGB(255, 180, 169, 169),
                          borderRadius: BorderRadius.circular(10)),
                      height: 5,
                      width: 5,
                      margin: const EdgeInsets.all(3),
                    ),
                  ))
            : GestureDetector(
                onTap: () {
                  if (side == "A")
                    reservationCubit.addSelectedA(index);
                  else if (side == "B") reservationCubit.addSelectedB(index);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: ((side == "A")
                              ? reservationCubit.selectedA.contains(index)
                              : reservationCubit.selectedB.contains(index))
                          ? Colors.white
                          : Color.fromARGB(255, 180, 169, 169),
                      borderRadius: BorderRadius.circular(10)),
                  height: 5,
                  width: 5,
                  margin: const EdgeInsets.all(3),
                ),
              ),
      ),
    );
  }
}
