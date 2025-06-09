import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:money_transfer_app/features/bank_transfer/presentation/pages/bank_transfer_page.dart';

void main() {
  testWidgets('Bank Transfer Form Validation', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: BankTransferPage()));

    // Verify initial state
    expect(find.text('Bank Transfer'), findsOneWidget);
    expect(find.byType(DropdownButtonFormField<String>), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(3));

    // Try to submit empty form
    await tester.tap(find.text('Continue'));
    await tester.pump();

    // Verify validation errors
    expect(find.text('Please select a bank'), findsOneWidget);
    expect(find.text('Please enter account number'), findsOneWidget);
    expect(find.text('Please enter amount'), findsOneWidget);

    // Fill form with invalid data
    await tester.enterText(
        find.byType(TextFormField).at(0), '123'); // Account number
    await tester.enterText(find.byType(TextFormField).at(1), '10'); // Amount
    await tester.tap(find.text('Continue'));
    await tester.pump();

    // Verify validation errors
    expect(find.text('Account number must be at least 10 digits'), findsOneWidget);
    expect(find.text('Minimum transfer is 25 Birr'), findsOneWidget);
  });
}