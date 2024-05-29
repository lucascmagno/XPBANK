import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:banking_app/pages/quotation_page.dart';

void main() {
  testWidgets('QuotationPage fetches and displays exchange rate', (WidgetTester tester) async {
    Future<double> mockFetchExchangeRate() async {
      return 5.5;
    }

    await tester.pumpWidget(MaterialApp(
      home: QuotationPage(fetchExchangeRate: mockFetchExchangeRate),
    ));

    expect(find.text('1 USD = 0.0 BRL'), findsOneWidget);

    await tester.tap(find.text('Fetch Exchange Rate'));
    await tester.pump();

    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await tester.pumpAndSettle();

    expect(find.text('1 USD = 5.5 BRL'), findsOneWidget);
  });
}
