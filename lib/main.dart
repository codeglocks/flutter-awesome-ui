import 'package:flutter/material.dart';
import 'package:flutter_widgets/welcome_screen.dart';
import 'package:flutter_widgets/widgets/expansionTile/singleTile/MyExpansionTile.dart';
import 'package:flutter_widgets/widgets/expansionTile/tilePanel/MyExpansionTilePanel.dart';
import 'package:flutter_widgets/widgets/swipe_panel/Swipe_Panel.dart';

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
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        MyExpansionTile.id: (context) => MyExpansionTile(),
        MyExpansionTilePanel.id: (context) => MyExpansionTilePanel(),
        SwipeUpPanel.id: (context) => SwipeUpPanel()
      },
    );
  }
}
