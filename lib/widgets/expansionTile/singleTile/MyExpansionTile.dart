import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/expansionTile/tilePanel/MyExpansionTilePanel.dart';

class MyExpansionTile extends StatelessWidget {
  static const String id = 'MyExpansionTile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expansion tile demo'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Expansion panel'),
        onPressed: () {
          Navigator.pushNamed(context, MyExpansionTilePanel.id);
        },
      ),
      body: Center(
        child: ExpansionTile(
          title: Text('Expansion Tile'),
          leading: Icon(Icons.message),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title: Text('list tile'),
              subtitle: Text('subtitle'),
            ),
          ],
//          initiallyExpanded: true,
        ),
      ),
    );
  }
}
