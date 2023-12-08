import 'package:dev_core/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';

/// {@category Utils}
/// Permet d'executer une fonction après le build de la page.
void execAfterBuildMethod(Function fn) =>
    WidgetsBinding.instance.addPostFrameCallback((_) => fn());

/// {@category Utils}
/// Permet de récupérer la valeur d'une enum sous forme de [String].
String? enumToString<T>(T actual) => actual.toString().split(".").last;

/// {@category Utils}
/// Permet de récupérer la valeur d'une [String] sous forme de l'enum [T].
T? stringToEnum<T>(List<T> values, String? value) =>
    values.firstWhereOrNull((element) => enumToString(element) == value);
