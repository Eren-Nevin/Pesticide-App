import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

String convertIntTimeToDate(int time) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(time);
  String ymd = DateFormat.yMd().format(dateTime);
  /* String hour = DateFormat.jm().format(datetime); */
  return ymd;
}

Future<void> setLocaleAndRestart(
    BuildContext context, String languageCode) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  await prefs.setString('locale', languageCode);

  RestartWidget.restartApp(context);
}
