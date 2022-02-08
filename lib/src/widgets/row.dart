import 'package:flutter/material.dart';
import 'package:responsive_row/src/widgets/col.dart';

class ResponsiveRow extends StatelessWidget {
  /// build list of widgets by index
  /// ```dart
  /// ResponsiveRow.builder(
  ///   itemCount: 10,
  ///   itemBuilder: (index) {
  ///     return ResponsiveCol(
  ///       lg: Sizes.col3,
  ///       md: Sizes.col6,
  ///       sm: Sizes.col12,
  ///       child: Container(
  ///         height: 100,
  ///         margin: const EdgeInsets.all(10),
  ///         color: Colors.red,
  ///         child: Center(
  ///           child: Text(
  ///             index.toString(),
  ///             style: const TextStyle(
  ///               fontSize: 20,
  ///               color: Colors.white,
  ///             ),
  ///           ),
  ///         ),
  ///       ),
  ///     );
  ///   },
  /// ),
  ///
  /// ```
  static ResponsiveRow builder({
    ///
    /// quantity build elements
    ///
    required int itemCount,

    ///
    /// this param is a function that returns a ResponsiveCol
    ///
    required ResponsiveCol Function(int) itemBuilder,

    ///
    /// aligment of elements
    ///
    WrapAlignment alignment = WrapAlignment.start,
  }) {
    List<ResponsiveCol> _childs = [];
    for (int i = 0; i < itemCount; i++) {
      _childs.add(itemBuilder(i));
    }
    return ResponsiveRow(
      alignment: alignment,
      children: _childs,
    );
  }

  final List<ResponsiveCol> children;
  final WrapAlignment alignment;

  /// use this widget to build
  /// rows with adaptive children
  /// ```dart
  /// ResponsiveRow(
  ///   alignment: WrapAlignment.start //optional field
  ///   children: [
  ///     ResponsiveCol(
  ///       child: Container(),
  ///     ),
  ///   ]
  /// ),
  /// ```
  const ResponsiveRow({
    Key? key,
    required this.children,
    this.alignment = WrapAlignment.start,
  }) : super(key: key);

  ///
  ///
  ///build stateless widget
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: alignment,
      children: children,
    );
  }
}
