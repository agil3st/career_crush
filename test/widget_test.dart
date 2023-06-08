// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:career_crush/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    TestWidgetsFlutterBinding.ensureInitialized();

    // Verify that our counter starts at 0.
    final registerButton = find.widgetWithText(FilledButton, 'Register');
    expect(registerButton, findsOneWidget);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(registerButton);
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.textContaining('Start'), findsOneWidget);
  });
}
