import 'package:flutter/material.dart';

import 'package:app_masterclass/app/theme_controller.dart';
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
        // builder: (context, child) {//TODO!
        //   return SafeArea(child: null,);
        // },
        theme: _themeIsDark ? _darkTheme : _lightTheme,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
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
  brightness: Brightness.light,
  primaryColor: const Color(0xFF055AA3),
  backgroundColor: const Color(0xFFD6DFE4),
  scaffoldBackgroundColor: const Color(0xFFD6DFE4),
  indicatorColor: Colors.black,
  canvasColor: Colors.white,
  cardColor: const Color(0xFFEDF4F8),
);

ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xFF055AA3),
  backgroundColor: const Color(0xFF121517),
  scaffoldBackgroundColor: const Color(0xFF121517),
  indicatorColor: Colors.white,
  canvasColor: Colors.black,
  cardColor: const Color(0xFF172026),
);
