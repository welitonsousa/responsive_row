import 'package:flutter/material.dart';
import 'package:responsive_row/src/models/sizes.dart';

class ResponsiveCol extends StatelessWidget {
  ///
  /// small devices
  ///
  final Sizes sm;

  ///
  /// medium divices
  ///
  final Sizes md;

  ///
  /// large divices
  ///
  final Sizes lg;

  final Widget child;

  /// use this widget to build
  /// rows with adaptive children
  /// ```dart
  /// ResponsiveCol(
  ///   sm: Sizes.col12, //optional field
  ///   md: Sizes.col12, //optional field
  ///   lg: Sizes.col12, //optional field
  ///   child: Container(),
  /// )
  /// ```
  const ResponsiveCol({
    Key? key,
    this.sm = Sizes.col12,
    this.md = Sizes.col12,
    this.lg = Sizes.col12,
    required this.child,
  }) : super(key: key);

  ///
  ///
  /// function to know which type of device
  ///
  ///
  Sizes _diviceType(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width < 768) {
      return sm;
    } else if (width >= 768 && width < 992) {
      return md;
    } else {
      return lg;
    }
  }

  ///
  ///
  /// build stateless widget
  ///
  ///

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _diviceType(context).width(context),
      child: child,
    );
  }
}
