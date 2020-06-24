import 'package:flavor/flavor.dart';

import 'main.dart';

void main() {
  Flavor.create(
    Environment.production,
    properties: {
      Keys.apiUrl: 'https://api.company.com',
      Keys.apiKey: 'lksdhjfkjhdsf8sdfjkhsdf896',
      logLevelKey: 5,
    },
  );
  setupApp();
}
