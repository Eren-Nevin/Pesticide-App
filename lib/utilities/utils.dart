import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

String convertIntTimeToDate(int time) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(time);
  String ymd = DateFormat.yMd().format(dateTime);
  /* String hour = DateFormat.jm().format(datetime); */
  return ymd;
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
