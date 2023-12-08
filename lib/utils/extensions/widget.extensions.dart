import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  /// Return a widget with the given padding.
  Widget padding(EdgeInsetsGeometry padding) => Padding(padding: padding, child: this);

  /// Return a widget with the given margin.
  Widget margin(EdgeInsetsGeometry margin) => Padding(padding: margin, child: this);

  /// Return a widget centered.
  Widget centered() => Center(child: this);
}