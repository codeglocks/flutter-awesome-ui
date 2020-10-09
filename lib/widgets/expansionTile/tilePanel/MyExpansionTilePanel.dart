import 'package:flutter/material.dart';

class MyExpansionTilePanel extends StatefulWidget {
  static const String id = 'MyExpansionTilePanel';
  @override
  _MyExpansionTilePanelState createState() => _MyExpansionTilePanelState();
}

class _MyExpansionTilePanelState extends State<MyExpansionTilePanel> {
  var currentPanelIndex = -1;
  List<int> intList;
  List<ExpandedStateBean> expandStateList;
  _MyExpansionTilePanelState() {
    intList = new List();
    expandStateList = new List();
    for (int i = 0; i <= 10; i++) {
      intList.add(i);
      expandStateList.add(ExpandedStateBean(i, false));
    }
  }

  _setCurrentIndex(int index, isExpand) {
    setState(() {
      expandStateList.forEach((element) {
        if (element.i == index) {
          element.isOpen = !isExpand;
        } else {
          //element.isOpen = false;
          //remove comment of this line if you need to expand only one tile at once;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("expansion panel list"),
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList(
            expansionCallback: (index, bol) {
              _setCurrentIndex(index, bol);
            },
            children: intList.map((index) {
              return new ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return new ListTile(
                    title: new Text('This is NO. $index'),
                  );
                },
                body: ListTile(
                  title: Text('expansion no.$index'),
                ),
                isExpanded: expandStateList[index].isOpen,
              );
            }).toList(),
          ),
        ));
  }
}

class ExpandedStateBean {
  var isOpen;
  var i; //index
  ExpandedStateBean(this.i, this.isOpen);
}
