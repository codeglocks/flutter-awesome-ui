import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String message;
  final String positiveBtnText;
  final String negativeBtnText;
  final Function onPositivePressed;
  final Function onNegativePressed;
  final double circularBorderRadius;

  CustomAlertDialog({
    this.title,
    this.message,
    this.circularBorderRadius = 15.0,
    this.bgColor = Colors.white,
    this.positiveBtnText,
    this.negativeBtnText,
    this.onPositivePressed,
    this.onNegativePressed,
  })  : assert(bgColor != null),
        assert(circularBorderRadius != null);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title != null ? Text(title) : null,
      content: message != null ? Text(message) : null,
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(circularBorderRadius)),
      actions: <Widget>[
        negativeBtnText != null
            ? FlatButton(
                child: Text(negativeBtnText),
                textColor: Theme.of(context).accentColor,
                onPressed: () {
                  Navigator.of(context).pop();
                  if (onNegativePressed != null) {
                    onNegativePressed();
                  }
                },
              )
            : null,
        positiveBtnText != null
            ? FlatButton(
                child: Text(positiveBtnText),
                textColor: Theme.of(context).accentColor,
                onPressed: () {
                  if (onPositivePressed != null) {
                    onPositivePressed();
                  }
                },
              )
            : null,
      ],
    );
  }
}

//How to use
//you can use any trigger to show this dialog box. I will use inkwell
// InkWell(
//  child:Text("click"),
//  onTap:(){
//  var dialog = CustomAlertDialog(
//    title: "Logout",
//    message: "Are you sure, do you want to logout?",
//    onPositivePressed: () {
//      your function here
//    },
//    positiveBtnText: 'Yes',
//    negativeBtnText: 'No',
//    bgColor:Colors.white);
//
//  showDialog(
//    context: context,
//    builder: (BuildContext context) => dialog);
//  }
// ),
