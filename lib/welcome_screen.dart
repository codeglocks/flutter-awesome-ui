import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Awesome flutter widgets",
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyGradientButton(
              key: Key('actionSheetKey'),
              title: 'Show Action Sheet',
              onPress: () async {
                await showCupertinoModalPopup(
                    context: context,
                    builder: (context) => MyCupertinoActionSheet());
              },
            ),
            MyGradientButton(
              title: 'Show Expansion Tile',
              onPress: () {
                Navigator.pushNamed(context, MyExpansionTile.id);
              },
            ),
            MyGradientButton(
              title: 'Swipe Up Panel',
              onPress: () {
                Navigator.pushNamed(context, SwipeUpPanel.id);
              },
            ),
            MyGradientButton(
              title: 'Alert Dialog',
              onPress: () {
                var dialog = CustomAlertDialog(
                    title: "View Swipe panel",
                    message:
                        "Are you sure, do you want to view swipe up panel?",
                    onPositivePressed: () {
                      Navigator.popAndPushNamed(context, SwipeUpPanel.id);
                    },
                    positiveBtnText: 'Yes',
                    negativeBtnText: 'No',
                    bgColor: Colors.white);

                showDialog(
                    context: context,
                    builder: (BuildContext context) => dialog);
              },
            ),
            MyGradientButton(
              title: '404 Error page',
              onPress: () {
                Navigator.pushNamed(context, Error404.id);
              },
            ),
          ],
        ),
      ),
      drawer: UserAccountDrawer(),
    );
  }
}
