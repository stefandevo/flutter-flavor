import 'package:flutter/material.dart';
import 'config.dart';

/// A widget that shows a banner on the app based upon
/// the current flavor configuration
class FlavorBanner extends StatelessWidget {
  /// The content the Flavor Banner is wrapping.
  /// Often this is the [MaterialApp] widget.
  final Widget child;

  /// Where to show a [FlavorBanner].
  final BannerLocation location;

  /// Creates the flavor banner.
  ///
  /// The [child] argument must not be null.
  FlavorBanner({
    required this.child,
    this.location = BannerLocation.topStart,
  });
  @override
  Widget build(BuildContext context) {
    final f = Flavor.instance;
    if (f.isProduction) return child;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
        color: f.color!,
        message: f.title!,
        location: location,
        child: child,
      ),
    );
  }
}
