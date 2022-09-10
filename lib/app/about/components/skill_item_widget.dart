import 'package:flutter/material.dart';

class SkillItemWidget extends StatelessWidget {
  final String title;
  final double experienceLevel;
  const SkillItemWidget({
    super.key,
    required this.title,
    required this.experienceLevel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(flex: 1, child: Text(title)),
          Expanded(
            flex: 2,
            child: Container(
              height: 9,
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 9,
                  width: experienceLevel * 20,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25))),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
