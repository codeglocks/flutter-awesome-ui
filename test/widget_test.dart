// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_widgets/main.dart';
import 'package:flutter_widgets/widgets/buttons/gradient_button/MyGradientButton.dart';
import 'package:flutter_widgets/widgets/cupertinoActionSheet/CupertinoActionSheet.dart';

void main() {
  testWidgets('Elements in main UI', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify number of buttons in the main UI
    expect(find.byType(MyGradientButton), findsNWidgets(4));
    // Verify texts in the main UI.
    expect(find.text('Show Action Sheet'), findsOneWidget);
    expect(find.text('Show Expansion Tile'), findsOneWidget);
    expect(find.text('Swipe Up Panel'), findsOneWidget);
  });
  testWidgets('Show action sheet', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    // Define the test key.
    final actionSheetKey = Key('actionSheetKey');
    final actionSheetBtn = find.byKey(actionSheetKey);
    //action
    await tester.tap(actionSheetBtn);
    await tester.pump();
    //assertion
    final actionSheet = find.byType(MyCupertinoActionSheet);
    expect(actionSheet, findsOneWidget);
  });
}
