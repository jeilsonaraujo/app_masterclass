import 'package:app_masterclass/app/about/components/skill_item_widget.dart';
import 'package:flutter/material.dart';

class SkilsWidget extends StatelessWidget {
  const SkilsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Habilidades e Competencias'),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: const [
                  SkillItemWidget(title: 'Dart/Flutter', experienceLevel: 5.5),
                  SkillItemWidget(title: 'Python', experienceLevel: 8),
                  SkillItemWidget(title: 'C', experienceLevel: 1),
                  SkillItemWidget(title: 'C++', experienceLevel: 1),
                  SkillItemWidget(title: 'HTML', experienceLevel: 5),
                  SkillItemWidget(title: 'Java', experienceLevel: 4.5),
                  SkillItemWidget(title: 'Git', experienceLevel: 7),
                  SkillItemWidget(title: 'Lua', experienceLevel: 4),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
