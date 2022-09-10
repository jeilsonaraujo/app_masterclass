import 'package:flutter/material.dart';

class HeaderCardRepositoryWidget extends StatefulWidget {
  final IconData icon;
  final String title;
  final String amountOfExercises;
  const HeaderCardRepositoryWidget({
    required this.icon,
    required this.title,
    required this.amountOfExercises,
    super.key,
  });

  @override
  State<HeaderCardRepositoryWidget> createState() =>
      _HeaderCardRepositoryWidgetState();
}

class _HeaderCardRepositoryWidgetState
    extends State<HeaderCardRepositoryWidget> {
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
                child: Icon(widget.icon, color: Theme.of(context).canvasColor),
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
