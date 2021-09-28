import 'package:flutter/material.dart' show Color;
import 'environment.dart';

/// The Flavor configuration class
class Flavor {
  /// The environment for this flavor
  final Environment environment;

  /// The title to be used in the banner for this flavor
  final String? title;

  /// The color to be used in the banner for this flavor
  final Color? color;

  /// Extra properties to use for this flavor
  final Map<String, dynamic>? properties;

  static Flavor? _instance;

  /// Get the instance of the current flavor configuration
  static Flavor get instance => _instance!;

  /// Get the instance of the current flavor configuration (short)
  static Flavor get I => _instance!;

  Flavor._(this.environment, this.title, this.color, this.properties) {
    _instance = this;
  }

  /// Create an instance of the flavor configuration
  Flavor.create(
    Environment environment, {
    String? name,
    Color? color,
    Map<String, Object>? properties,
  }) : this._(environment, name, color, properties);

  /// Try to get the value of the properties as Object
  Object? getObject(String key) => properties?.containsKey(key) ?? false
      ? properties![key] as Object?
      : null;

  /// Try to get the value of the properties as String
  String? getString(String key) => properties?.containsKey(key) ?? false
      ? properties![key] as String?
      : null;

  /// Try to get the value of the properties as int
  int? getInt(String key) =>
      properties?.containsKey(key) ?? false ? properties![key] as int? : null;

  /// Try to get the value of the properties as double
  double? getDouble(String key) => properties?.containsKey(key) ?? false
      ? properties![key] as double?
      : null;

  /// Try to get the value of the properties as bool
  bool? getBool(String key) =>
      properties?.containsKey(key) ?? false ? properties![key] as bool? : null;

  /// Check if the current flavor is the development flavor
  bool get isDevelopment => environment == Environment.dev;

  /// Check if the current flavor is the alpha flavor
  bool get isAlpha => environment == Environment.alpha;

  /// Check if the current flavor is the beta flavor
  bool get isBeta => environment == Environment.beta;

  /// Check if the current flavor is the production flavor
  bool get isProduction => environment == Environment.production;
}
