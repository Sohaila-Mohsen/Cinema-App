import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'reservation_state.dart';

class ReservationCubit extends Cubit<ReservationState> {
  late int? showDayIndex;
  late int? showTimeIndex;
  bool choseDay = false;
  bool choseTime = false;
  List<int> selectedA = [];
  List<int> selectedB = [];

  ReservationCubit() : super(ReservationInitial());
  static ReservationCubit get(context) => BlocProvider.of(context);

  chooseDay(int day) {
    if (choseDay && showDayIndex != day) {
      selectedA.clear();
      selectedB.clear();
    }
    choseDay = true;
    showDayIndex = day;
    emit(ReservationDayChosen());
  }

  chooseTime(int time) {
    if (choseTime && showTimeIndex != time) {
      selectedA.clear();
      selectedB.clear();
    }
    choseTime = true;
    showTimeIndex = time;
    emit(ReservationTimeChosen());
  }

  addSelectedA(int index) {
    selectedA.add(index);
    emit(SeatSelectedSideA());
  }

  addSelectedB(int index) {
    selectedB.add(index);
    emit(SeatSelectedSideB());
  }
}
