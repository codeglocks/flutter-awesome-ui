import 'package:flutter/material.dart';
import 'package:flutter_widgets/welcome_screen.dart';
import 'package:flutter_widgets/widgets/error404/Error404Design1.dart';
import 'package:flutter_widgets/widgets/expansionTile/singleTile/MyExpansionTile.dart';
import 'package:flutter_widgets/widgets/expansionTile/tilePanel/MyExpansionTilePanel.dart';
import 'package:flutter_widgets/widgets/swipe_panel/Swipe_Panel.dart';

class Routing {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case WelcomeScreen.id:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case MyExpansionTile.id:
        return MaterialPageRoute(builder: (_) => MyExpansionTile());
      case MyExpansionTilePanel.id:
        return MaterialPageRoute(builder: (_) => MyExpansionTilePanel());
      case SwipeUpPanel.id:
        return MaterialPageRoute(builder: (_) => SwipeUpPanel());
      case Error404.id:
        return MaterialPageRoute(builder: (_) => Error404());
      default:
        return MaterialPageRoute(builder: (_) => Error404());
    }
  }
}
