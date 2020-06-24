import 'package:flutter/material.dart';
import 'package:flavor/flavor.dart';

/// The launch.json determines what dart file to use as main.
/// The main_*.dart file configures the flavor and then runs the [setupApp] method to start the app.
/// Check main_dev.dart, main_beta.dart, and main_prod.dart in the repository.

/// Custom Property keys
const String logLevelKey = 'log_level';

/// Entry point called after main()
void setupApp() {
  final logLevel = Flavor.I.getInt(logLevelKey);
  print('LogLevel set for this flavor: $logLevel');
  if (Flavor.I.isDevelopment) {
    // do something nice in development
  }
  runApp(FlavorApp());
}

/// The sample flavor app
class FlavorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      child: MaterialApp(
        title: 'Flavor Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}

/// The home page of the flavor app
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flavor Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Flavor.I.getString(Keys.apiUrl),
            ),
            Text(
              Flavor.I.environment.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
