import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  Flavor.create(
    Environment.dev,
    color: Colors.green,
    name: 'PREVIEW',
    properties: {
      Keys.apiUrl: 'https://api.dev.company.com',
      Keys.apiKey: 'jksdhfkjhs83rjkh324kj23h4',
      logLevelKey: 100,
    },
  );
  setupApp();
}
