import 'package:flutter/material.dart';
import 'package:flutter_widgets/classes/Routing.dart';
import 'package:flutter_widgets/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light),
      onGenerateRoute: Routing.generateRoute,
      initialRoute: WelcomeScreen.id,
    );
  }
}
