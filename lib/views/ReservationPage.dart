import 'package:cinema/blocs/cubit/reservation_cubit.dart';
import 'package:cinema/components/dayTimeElement.dart';
import 'package:cinema/components/dot_description.dart';
import 'package:cinema/components/seatSide.dart';
import 'package:cinema/models/films.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReservationPage extends StatelessWidget {
  final Film? film;
  const ReservationPage({Key? key, this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: BlocConsumer<ReservationCubit, ReservationState>(
        listener: (context, state) {},
        builder: (context, state) {
          var reservationCubit = ReservationCubit.get(context);
          return Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 29, 29, 29)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromARGB(236, 255, 255, 255),
                        )),
                    const Text(
                      "Select Seat",
                      style:
                          TextStyle(color: Color.fromARGB(236, 255, 255, 255)),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark,
                            color: Colors.transparent)),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 280,
                  width: double.infinity,
                  child: Row(
                    children: [
                      SeatSide(
                          film: film!,
                          reservationCubit: reservationCubit,
                          side: "A"),
                      const SizedBox(
                        width: 10,
                      ),
                      SeatSide(
                          film: film!,
                          reservationCubit: reservationCubit,
                          side: "B"),
                    ],
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [DotDescription()]),
                Expanded(
                  child: DayTimeElement(
                      film: film!, reservationCubit: reservationCubit),
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}
