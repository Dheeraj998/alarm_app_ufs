import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

customSnackBar(BuildContext context,
    {required String text,
    required Color color,
    Color? textColor,
    ToastGravity? toastGravity,
    int? toastDuration,
    double? width}) {
  FToast fToast = FToast().init(context);
  fToast.removeQueuedCustomToasts();
  fToast.showToast(
      gravity: toastGravity ?? ToastGravity.BOTTOM,
      child: Container(
          width: width,
          margin: EdgeInsets.only(bottom: 35),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: color),
          child: Text(text,
              style: TextStyle(
                  color:
                      textColor ?? Theme.of(context).colorScheme.onTertiary))),
      toastDuration: Duration(seconds: toastDuration ?? 2));
}
