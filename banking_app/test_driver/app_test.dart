import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Banking App', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('starts at login screen', () async {
      expect(await driver.getText(find.text('Login')), 'Login');
    });

    test('can navigate to main screen', () async {
      await driver.tap(find.text('Login'));
      expect(await driver.getText(find.text('Quotation')), 'Quotation');
    });
  });
}
