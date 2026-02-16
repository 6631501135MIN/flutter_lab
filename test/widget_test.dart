import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_lab/week04/assignment2.dart';  // Import your login screen

void main() {
  testWidgets('Login screen loads and shows fields', (WidgetTester tester) async {
    // Build the Assignment1 widget
    await tester.pumpWidget(const MaterialApp(home: Assignment2()));

    // Check that the Username and Password fields exist
    expect(find.byType(TextField), findsNWidgets(2));

    // Check that the Login button exists
    expect(find.text('Login'), findsOneWidget);
  });

  testWidgets('Successful login with correct credentials', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Assignment2()));

    // Enter correct username and password
    await tester.enterText(find.byType(TextField).at(0), 'admin');
    await tester.enterText(find.byType(TextField).at(1), '1234');

    // Tap the login button
    await tester.tap(find.text('Login'));
    await tester.pump();

    // Verify success message
    expect(find.text('Welcome admin'), findsOneWidget);
  });

  testWidgets('Failed login with wrong credentials', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Assignment2()));

    // Enter wrong username and password
    await tester.enterText(find.byType(TextField).at(0), 'wrong');
    await tester.enterText(find.byType(TextField).at(1), '0000');

    // Tap the login button
    await tester.tap(find.text('Login'));
    await tester.pump();

    // Verify failure message
    expect(find.text('Wrong username or password'), findsOneWidget);
  });
}
