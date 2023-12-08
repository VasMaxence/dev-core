import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Permet d'executer une fonction en fonction de la plateforme.
T execInCaseOfPlatfom<T>(Function fnWeb, Function fnMobile) {
  if (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) {
    return fnMobile();
  } else {
    return fnWeb();
  }
}

FutureOr<T?> execInCasOfOs<T>(Function fnAndroid, Function fnIos) {
  if (Platform.isAndroid) {
    return fnAndroid();
  } else if (Platform.isIOS) {
    return fnIos();
  }
  return null;
}

/// Permet de récupérer la valeur en fonction de la plateforme.
T? getValueForPlatform<T>(T? val1, T? val2) =>
    execInCaseOfPlatfom(() => val1, () => val2);

/// Permet de créer une SizedBox responsive en [height]
Widget sh(double value) =>
    SizedBox(height: execInCaseOfPlatfom<double>(() => value, () => value.h));

/// Permet de créer un padding horizontal responsive
EdgeInsetsGeometry pw(double value) => execInCaseOfPlatfom<EdgeInsetsGeometry>(
    () => EdgeInsets.symmetric(horizontal: value),
    () => EdgeInsets.symmetric(horizontal: value.w));

/// Permet de créer un padding vertical responsive
EdgeInsetsGeometry ph(double value) => execInCaseOfPlatfom<EdgeInsetsGeometry>(
    () => EdgeInsets.symmetric(vertical: value),
    () => EdgeInsets.symmetric(vertical: value.h));

/// Permet de créer une SizedBox responsive en [width]
Widget sw(double value) =>
    SizedBox(width: execInCaseOfPlatfom<double>(() => value, () => value.w));

/// Permet de créer un padding horizontal et vertical responsive
EdgeInsetsGeometry pwh(double height, double width) =>
    execInCaseOfPlatfom<EdgeInsetsGeometry>(
        () => EdgeInsets.symmetric(horizontal: width, vertical: height),
        () => EdgeInsets.symmetric(horizontal: width.w, vertical: height.h));

/// Permet de récupérer une [fontSize] en responsive
double sp(double value) =>
    execInCaseOfPlatfom<double>(() => value, () => value.sp);

/// Permet de récupérer un [radius] en responsive
double r(double value) =>
    execInCaseOfPlatfom<double>(() => value, () => value.r);

/// Permet de récupérer une [height] en responsive
double formatHeight(double value) =>
    execInCaseOfPlatfom<double>(() => value, () => value.h);

/// Permet de récupérer une [width] en responsive
double formatWidth(double value) =>
    execInCaseOfPlatfom<double>(() => value, () => value.w);
