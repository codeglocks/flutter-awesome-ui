import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/swipe_panel/slider.dart';

class SwipeUpPanel extends StatefulWidget {
  static const String id = 'swipe_up_panel';
  @override
  _SwipeUpPanelState createState() => _SwipeUpPanelState();
}

class _SwipeUpPanelState extends State<SwipeUpPanel> {
  PanelController _pc = new PanelController();

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("SlidingUpPanelExample"),
      ),
      body: SlidingUpPanel(
        maxHeight: (MediaQuery.of(context).size.height - 300),
        controller: _pc,
        panel: Center(
          child: Text(
            "This is the sliding Widget",
            style: TextStyle(color: Colors.black),
          ),
        ),
        collapsed: Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: radius),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0),
                    bottomRight: const Radius.circular(20.0),
                    bottomLeft: const Radius.circular(20.0),
                  ),
                ),
                height: 10,
                width: 70,
              ),
              Center(
                child: Text(
                  "Swipe up to view",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        body: GestureDetector(
          onTap: () => _pc.close(),
          child: Container(
            color: Colors.white,
            child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://bestwallpapers.net/wp-content/uploads/2020/03/Android-Phone-Wallpapers-Most-Android-Phone-Wallpaper-Download.jpeg"),
            ),
          ),
        ),
        borderRadius: radius,
      ),
    );
  }
}
