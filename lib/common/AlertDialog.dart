import 'package:flutter/material.dart';
import 'ColorsConstant.dart';

showAlertDialog(BuildContext context, String message) {
  BuildContext dialogContext;
  Widget okButton = TextButton(
    child:  Text(
      "OK",
      style: TextStyle(color: colorSnowWhite),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  AlertDialog alert = AlertDialog(
    title:  Text(
      "AlertDialog",
      style: TextStyle(color: colorSnowWhite, fontWeight: FontWeight.bold),
    ),
    content: Text(message),
    actions: [
      okButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      dialogContext = context;
      return alert;
    },
  );
}

Widget getProgressDialog() {
  return SizedBox(
      height: 100,
      width: 100,
      child: Center(
          child: Transform.scale(
            scale: 1.5,
            child: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(kCircularIndicatorColor),
              strokeWidth: 2.5,
            ),
          )));
}

void dismissIndicator(BuildContext context) {
  Navigator.of(context, rootNavigator: true).pop(context);
}