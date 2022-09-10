import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterCardRepositoryWidget extends StatefulWidget {
  final void Function() navigateTo;
  const FooterCardRepositoryWidget({super.key, required this.navigateTo});

  @override
  State<FooterCardRepositoryWidget> createState() =>
      _FooterCardRepositoryWidgetState();
}

class _FooterCardRepositoryWidgetState
    extends State<FooterCardRepositoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(
                FontAwesomeIcons.github,
                size: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: Text(
                  'Acessar código fonte',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: widget.navigateTo,
            child: Container(
              width: 120,
              height: 35,
              decoration: const BoxDecoration(
                color: Color(0xFF055AA3),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Ver mais',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
