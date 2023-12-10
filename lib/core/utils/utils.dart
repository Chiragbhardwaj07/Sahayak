import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Utils {
  static toastmessage(String mess) {
    Fluttertoast.showToast(
        msg: mess, backgroundColor: Colors.blue[900], textColor: Colors.white);
  }

  static void flushBarErrorMessage(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.all(15),
          message: message,
          duration: Duration(seconds: 2),
          backgroundColor: Colors.red,
          reverseAnimationCurve: Curves.easeInOut,
          positionOffset: 20,
          borderRadius: BorderRadius.circular(20),
          icon: Icon(
            Icons.error,
            size: 28,
            color: Colors.white,
          ),
        ));
  }

  static void FieldFocusChange(
      BuildContext context, FocusNode current, FocusNode next) {
    current.unfocus();
    FocusScope.of(context).requestFocus(next);
  }

  static void ShowSnackbar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
            child: Text(
          message,
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red, // Background color
        padding: EdgeInsets.all(20), // Padding
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Border radius
          side: BorderSide(
              color: Colors.black, width: 0.5), // Border color and width
        ),
        elevation: 0, // No shadow
      ),
    );
  }
}
