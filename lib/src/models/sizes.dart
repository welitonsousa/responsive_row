import 'package:flutter/material.dart';

///
/// Sizes is enum
///
/// each col represents the number of columns that your widget will occupy,
/// with a maximum of 12 columns,
/// represented by [col12]
///
///
enum Sizes {
  col1,
  col2,
  col3,
  col4,
  col5,
  col6,
  col7,
  col8,
  col9,
  col10,
  col11,
  col12
}

extension SizesExt on Sizes {
  ///
  /// returns the screen size divided by the number of columns your widget will occupy
  ///
  double width(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    switch (this) {
      case Sizes.col1:
        return _width / 12;
      case Sizes.col2:
        return _width / 6;
      case Sizes.col3:
        return _width / 4;
      case Sizes.col4:
        return _width / 3;
      case Sizes.col5:
        return _width / 2.4;
      case Sizes.col6:
        return _width / 2;
      case Sizes.col7:
        return _width / 1.714;
      case Sizes.col8:
        return _width / 1.5;
      case Sizes.col9:
        return _width / 1.3;
      case Sizes.col10:
        return _width / 1.2;
      case Sizes.col11:
        return _width / 1.09;
      case Sizes.col12:
        return _width;
    }
  }
}
