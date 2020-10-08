import 'package:flutter/material.dart';

class MyGradientButton extends StatelessWidget {
  final Function onPress;
  final String title;
  const MyGradientButton({Key key, this.onPress, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPress,
      textColor: Colors.white,
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF11bbee),
              Color(0xFF1ff1f1),
              //Color(0xFFfcb045),
            ],
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
