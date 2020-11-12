import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/home_screen.dart';
import 'package:flutter_widgets/widgets/buttons/gradient_button/MyGradientButton.dart';
import 'package:flutter_widgets/widgets/cupertinoActionSheet/CupertinoActionSheet.dart';
import 'package:flutter_widgets/widgets/drawer/Drawer.dart';
import 'package:flutter_widgets/widgets/error404/Error404Design1.dart';
import 'package:flutter_widgets/widgets/expansionTile/singleTile/MyExpansionTile.dart';
import 'package:flutter_widgets/widgets/swipe_panel/Swipe_Panel.dart';

import 'widgets/alertDialog/alert_dialog.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _currentIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Text(
          'Add some widget to display here!',
          style: TextStyle(fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    Error404(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Awesome flutter widgets",
        ),
      ),
      body: _widgetOptions.elementAt(_currentIndex),
      drawer: UserAccountDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Widgets'),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.do_not_disturb),
              title: Text('404'),
              backgroundColor: Colors.red)
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
