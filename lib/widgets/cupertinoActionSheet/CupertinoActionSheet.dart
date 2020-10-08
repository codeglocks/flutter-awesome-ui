import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoActionSheet extends StatefulWidget {
  @override
  _MyCupertinoActionSheetState createState() => _MyCupertinoActionSheetState();
}

class _MyCupertinoActionSheetState extends State<MyCupertinoActionSheet> {
  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: Text(
        'Cupertino options',
        style: TextStyle(fontSize: 24),
      ),
      message: Text(
        'A short list of actions ',
        style: TextStyle(fontSize: 18),
      ),
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.of(context).pop('1');
          },
          child: Text('option 1'),
          isDefaultAction: true,
        ),
        CupertinoActionSheetAction(
          child: Text('option 2'),
          onPressed: () {
            Navigator.of(context).pop('2');
          },
        ),
        CupertinoActionSheetAction(
          child: Text('bad option'),
          onPressed: () {
            Navigator.of(context).pop('Bad');
          },
          isDestructiveAction: true,
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text('Cancel'),
        onPressed: () {
          print('canceld');
          Navigator.of(context).pop('cancel');
        },
      ),
    );
  }
}
