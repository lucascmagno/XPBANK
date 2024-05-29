import 'package:flutter_test/flutter_test.dart';
import 'package:banking_app/utils/currency_converter.dart';

void main() {
  test('convertUsdToBrl converts correctly', () {
    final converter = CurrencyConverter();
    final result = converter.convertUsdToBrl(10, 5.5);
    expect(result, 55);
  });
}
