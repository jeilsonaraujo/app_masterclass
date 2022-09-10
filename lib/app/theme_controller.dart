import 'package:flutter/material.dart';

class ThemeController extends InheritedWidget {
  final void Function() toggle;
  const ThemeController(
      {super.key, required super.child, required this.toggle});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
