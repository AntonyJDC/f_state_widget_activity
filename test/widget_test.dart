// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:f_state_widget_activity_template/ui/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test MyHomePage - Initial Value', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: MyHomePage(title: 'Test MyHomePage'),
        ),
      ),
    );

    // Verify the initial value is 0.5.
    expect(find.text('0.5'), findsNWidgets(2));
  });
  testWidgets('Test MyHomePage - Refresh Button', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: MyHomePage(title: 'Test MyHomePage'),
        ),
      ),
    );

    // Find and tap the Refresh button.
    final refreshButton = find.byKey(const Key('Refresh'));
    expect(refreshButton, findsOneWidget);
    await tester.tap(refreshButton);
    await tester.pump();

    // Verify that the value is now 0.5
    expect(find.text('0.5'), findsNWidgets(2));
  });

  testWidgets('Test MyHomePage - W1 Increment Button',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: MyHomePage(title: 'Test MyHomePage'),
        ),
      ),
    );

    // Find and tap the W1 Increment button.
    final w1IncrementButton = find.byKey(const Key('W1Add'));
    expect(w1IncrementButton, findsOneWidget);
    await tester.tap(w1IncrementButton);
    await tester.pump();

    // Verify that the value is incremented by 0.1.
    expect(find.text('0.6'), findsNWidgets(2));
  });

  testWidgets('Test MyHomePage - W3 Increment Button',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: MyHomePage(title: 'Test MyHomePage'),
        ),
      ),
    );

    // Find and tap the W3 Increment button.
    final w3IncrementButton = find.byKey(const Key('W3Add'));
    expect(w3IncrementButton, findsOneWidget);
    await tester.tap(w3IncrementButton);
    await tester.pump();

    // Verify that the value is incremented by 1.
    expect(find.text('1.5'), findsNWidgets(2));
  });

  testWidgets('Test MyHomePage - W1 Decrement Button',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: MyHomePage(title: 'Test MyHomePage'),
        ),
      ),
    );

    // Find and tap the W1 Decrement button.
    final w1DecrementButton = find.byKey(const Key('W1Sub'));
    expect(w1DecrementButton, findsOneWidget);
    await tester.tap(w1DecrementButton);
    await tester.pump();

    // Verify that the value is decremented by 0.1.
    expect(find.text('0.4'), findsNWidgets(2));
  });

  testWidgets('Test MyHomePage - W3 Decrement Button',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: MyHomePage(title: 'Test MyHomePage'),
        ),
      ),
    );

    // Find and tap the W3 Decrement button.
    final w3DecrementButton = find.byKey(const Key('W3Sub'));
    expect(w3DecrementButton, findsOneWidget);
    await tester.tap(w3DecrementButton);
    await tester.pump();

    // Verify that the value is decremented by 1.
    expect(find.text('-0.5'), findsNWidgets(2));
  });

  testWidgets('Test MyHomePage - W3 Decrement Button',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: MyHomePage(title: 'Test MyHomePage'),
        ),
      ),
    );

    // Find and tap the W3 Decrement button.
    final w3DecrementButton = find.byKey(const Key('W3Sub'));
    expect(w3DecrementButton, findsOneWidget);
    await tester.tap(w3DecrementButton);
    await tester.pump();

    // Verify that the value is decremented by 1.
    expect(find.text('-0.5'), findsNWidgets(2));
  });

  testWidgets('Test MyHomePage - Initial color Value',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: MyHomePage(title: 'Test MyHomePage'),
        ),
      ),
    );

    expect(
      (tester.widget(find.byKey(const Key('W2'))) as Container).color,
      Colors.blueGrey,
    );
  });

  testWidgets('Test MyHomePage - bigger color Value',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: MyHomePage(title: 'Test MyHomePage'),
        ),
      ),
    );

    expect(
      (tester.widget(find.byKey(const Key('W2'))) as Container).color,
      Colors.blueGrey,
    );

    // Find and tap the W3 Increment button.
    final w3IncrementButton = find.byKey(const Key('W3Add'));
    expect(w3IncrementButton, findsOneWidget);
    await tester.tap(w3IncrementButton);
    await tester.pump();

    expect(
      (tester.widget(find.byKey(const Key('W2'))) as Container).color,
      Colors.blueGrey,
    );

    // Find and tap the W1 Increment button.
    final w1IncrementButton = find.byKey(const Key('W1Add'));
    expect(w1IncrementButton, findsOneWidget);
    await tester.tap(w1IncrementButton);
    await tester.pump();

    expect(
      (tester.widget(find.byKey(const Key('W2'))) as Container).color,
      Colors.blueGrey,
    );
  });

  testWidgets('Test MyHomePage - lower color Value',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: MyHomePage(title: 'Test MyHomePage'),
        ),
      ),
    );

    expect(
      (tester.widget(find.byKey(const Key('W2'))) as Container).color,
      Colors.blueGrey,
    );

    // Find and tap the W3 Increment button.
    final w3IncrementButton = find.byKey(const Key('W3Sub'));
    expect(w3IncrementButton, findsOneWidget);
    await tester.tap(w3IncrementButton);
    await tester.pumpAndSettle();

    expect(
      (tester.widget(find.byKey(const Key('W2'))) as Container).color,
      Colors.blueGrey,
    );

    expect(find.byKey(const Key('W1Sub')), findsOneWidget);
    await tester.tap(find.byKey(const Key('W1Sub')));
    await tester.pumpAndSettle(const Duration(seconds: 2));

    expect(
      (tester.widget(find.byKey(const Key('W2'))) as Container).color,
      Colors.grey,
    );
  });
}
