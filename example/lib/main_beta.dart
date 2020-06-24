import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  Flavor.create(
    Environment.beta,
    color: Colors.orange,
    name: 'BETA',
    properties: {
      Keys.apiUrl: 'https://api.beta.company.com',
      Keys.apiKey: 'kjdshfksdfhk234234234',
      logLevelKey: 25,
    },
  );
  setupApp();
}
