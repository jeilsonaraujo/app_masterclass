import 'package:app_masterclass/app/theme_controller.dart';
import 'package:flutter/material.dart';

import 'package:app_masterclass/app/home/home_page.dart';

class MyAppWidget extends StatefulWidget {
  const MyAppWidget({Key? key}) : super(key: key);

  @override
  State<MyAppWidget> createState() => _MyAppWidgetState();
}

class _MyAppWidgetState extends State<MyAppWidget> {
  bool _themeIsDark = false;
  @override
  Widget build(BuildContext context) {
    return ThemeController(
      toggle: _changeTheme,
      child: MaterialApp(
        theme: _themeIsDark ? _darkTheme : _lightTheme,
        debugShowCheckedModeBanner: false,
        home: const SafeArea(
          child: HomePage(),
        ),
      ),
    );
  }

  void _changeTheme() {
    setState(() {
      _themeIsDark = !_themeIsDark;
    });
  }
}

ThemeData _lightTheme = ThemeData(
  indicatorColor: Colors.black,
  canvasColor: Colors.white,
  backgroundColor: const Color(0xFFD6DFE4),
  cardColor: const Color(0xFFEDF4F8),
  brightness: Brightness.light,
);

ThemeData _darkTheme = ThemeData(
  indicatorColor: Colors.white,
  canvasColor: Colors.black,
  backgroundColor: const Color(0xFF121517),
  cardColor: const Color(0xFF172026),
  brightness: Brightness.dark,
);
