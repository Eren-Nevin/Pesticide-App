import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:localization/localization.dart';

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

Future<bool> showStartingAlert(BuildContext context, String message) async {
  await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => CupertinoAlertDialog(
            title: Text('Warning'.i18n()),
            content: Text(message.i18n()),
            actions: [
              CupertinoDialogAction(
                child: Text("Continue".i18n()),
                isDefaultAction: true,
                onPressed: () {
                  GoRouter.of(context).pop();
                },
              )
            ],
          ));
  return true;
}
