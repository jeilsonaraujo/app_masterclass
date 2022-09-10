import 'package:app_masterclass/app/theme_controller.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderPageWidget extends StatefulWidget {
  final Widget child;
  const HeaderPageWidget({super.key, required this.child});

  @override
  State<HeaderPageWidget> createState() => _HeaderPageWidgetState();
}

class _HeaderPageWidgetState extends State<HeaderPageWidget> {
  @override
  Widget build(BuildContext context) {
    final controller =
        context.dependOnInheritedWidgetOfExactType<ThemeController>()!;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 27.0),
          child: SizedBox(
            height: 92,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Image.asset(
                        'assets/logo.png',
                        height: 44,
                        width: 44,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Atividades',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Fluterando Masterclass',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    controller.toggle();
                  },
                  icon: const Icon(FontAwesomeIcons.solidMoon, size: 28),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: widget.child,
          ),
        )
      ],
    );
  }
}
