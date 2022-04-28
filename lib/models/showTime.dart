import 'package:cinema/models/Seats.dart';

class ShowTime {
  String? time;
  List<Seats>? reservedSeats = [];
  ShowTime({this.time, this.reservedSeats});

  bool isReserved(int index) {
    for (var item in reservedSeats!) {
      if (item.seatNumber == index + 1) return true;
    }
    return false;
  }

  String seatOfReserved(int index) {
    int i = 0;
    if (isReserved(index)) {
      for (var item in reservedSeats!) {
        if (item.seatNumber == index + 1) {
          return reservedSeats![i].seatSide.toString();
        }
        i++;
      }
    }
    return "";
  }
}
