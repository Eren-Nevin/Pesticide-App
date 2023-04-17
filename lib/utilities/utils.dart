import 'package:intl/intl.dart';

String convertIntTimeToDate(int time) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(time);
  String ymd = DateFormat.yMd().format(dateTime);
  /* String hour = DateFormat.jm().format(datetime); */
  return ymd;
}
