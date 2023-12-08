import 'dart:ui';

import 'package:flutter/material.dart';

final class ReturnButtonTheme extends ThemeExtension<ReturnButtonTheme> {
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final Widget? child;

  ReturnButtonTheme({
    this.decoration,
    this.padding,
    this.height,
    this.width,
    this.child,
  });

  @override
  ThemeExtension<ReturnButtonTheme> copyWith({
    BoxDecoration? decoration,
    EdgeInsetsGeometry? padding,
    double? height,
    double? width,
    Widget? child,
  }) {
    return ReturnButtonTheme(
      decoration: decoration ?? this.decoration,
      padding: padding ?? this.padding,
      height: height ?? this.height,
      width: width ?? this.width,
      child: child ?? this.child,
    );
  }

  @override
  ThemeExtension<ReturnButtonTheme> lerp(
      covariant ThemeExtension<ReturnButtonTheme>? other, double t) {
    if (other == null) return this;
    if (other is ReturnButtonTheme) {
      return ReturnButtonTheme(
        decoration: BoxDecoration.lerp(decoration, other.decoration, t),
        padding: EdgeInsetsGeometry.lerp(padding, other.padding, t),
        height: lerpDouble(height, other.height, t),
        width: lerpDouble(width, other.width, t),
        child: child,
      );
    }
    return this;
  }
}
