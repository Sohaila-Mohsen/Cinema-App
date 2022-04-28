part of 'reservation_cubit.dart';

@immutable
abstract class ReservationState {}

class ReservationInitial extends ReservationState {}

class ReservationDayChosen extends ReservationState {}

class ReservationTimeChosen extends ReservationState {}

class SeatSelectedSideA extends ReservationState {}

class SeatSelectedSideB extends ReservationState {}
