import 'package:flutter/material.dart';

class Error404 extends StatefulWidget {
  static const String id = "404error";
  @override
  _Error404State createState() => _Error404State();
}

class _Error404State extends State<Error404> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFeeaeca),
              Color(0xFF94bbe9),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hmmm.. Something went wrong!!",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Image.asset('assets/images/404error.png'),
            OutlineButton(
              borderSide: BorderSide(width: 1.0, color: Colors.deepPurple),
              highlightedBorderColor: Colors.black,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
                child: Text(
                  "Go Home",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
