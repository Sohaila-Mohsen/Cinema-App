import 'package:cinema/models/showTime.dart';

class ShowDay {
  String? month;
  String? day;
  List<ShowTime>? showTimes = [];
  ShowDay({this.month, this.day, this.showTimes});
}
