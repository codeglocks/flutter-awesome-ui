import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/buttons/gradient_button/MyGradientButton.dart';
import 'package:flutter_widgets/widgets/cupertinoActionSheet/CupertinoActionSheet.dart';
import 'package:flutter_widgets/widgets/drawer/Drawer.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Awesome flutter widgets",
        ),
      ),
      body: Center(
        child: Container(
          child: MyGradientButton(
            title: 'Show Action Sheet',
            onPress: () async {
              var f = await showCupertinoModalPopup(
                  context: context,
                  builder: (context) => MyCupertinoActionSheet());
            },
          ),
        ),
      ),
      drawer: UserAccountDrawer(),
    );
  }
}
