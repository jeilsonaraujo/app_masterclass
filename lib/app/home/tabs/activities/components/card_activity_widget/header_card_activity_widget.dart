import 'package:flutter/material.dart';

class HeaderCardActivityWidget extends StatefulWidget {
  final Widget icon;
  final String title;
  final String amountOfExercises;
  const HeaderCardActivityWidget({
    required this.icon,
    required this.title,
    required this.amountOfExercises,
    super.key,
  });

  @override
  State<HeaderCardActivityWidget> createState() =>
      _HeaderCardActivityWidgetState();
}

class _HeaderCardActivityWidgetState extends State<HeaderCardActivityWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 43,
                height: 43,
                decoration: const BoxDecoration(
                    color: Color(0xFF055AA3), shape: BoxShape.circle),
                child: widget.icon,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                  'Exercicios:',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              Text(
                widget.amountOfExercises,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
