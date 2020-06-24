import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flavor/flavor.dart';

void main() {
  test('read properties', () {
    Flavor.create(
      Environment.dev,
      color: Colors.green,
      name: 'PREVIEW',
      properties: {
        Keys.apiUrl: 'https://api.dev.company.com',
        Keys.apiKey: 'jksdhfkjhs83rjkh324kj23h4',
        'intValue': 100,
        'boolValue': true,
        'doubleValue': 1.99,
      },
    );

    expect(Flavor.I.getString(Keys.apiUrl), 'https://api.dev.company.com');
    expect(Flavor.I.getInt('intValue'), 100);
    expect(Flavor.I.getBool('boolValue'), true);
    expect(Flavor.I.getDouble('doubleValue'), 1.99);

    expect(Flavor.I.getString('nonExistingKey'), null);

    expect(Flavor.I.isDevelopment, true);
    expect(Flavor.I.isProduction, false);
  });
}
