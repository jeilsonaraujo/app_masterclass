import 'package:flutter/material.dart';

class SkillItemWidget extends StatelessWidget {
  final String title;
  final double experienceLevel;

  ///The [experienceLevel] shoud between 0.0 and 1.0
  const SkillItemWidget({
    super.key,
    required this.title,

    ///Level of hability on this skill value between 0.0 to 1.0
    required this.experienceLevel,
  });

  @override
  Widget build(BuildContext context) {
    final double widthFiftyPercent = MediaQuery.of(context).size.width * 0.5;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(flex: 1, child: Text(title)),
          Container(
            height: 9,
            width: widthFiftyPercent,
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
                width: widthFiftyPercent * experienceLevel,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
