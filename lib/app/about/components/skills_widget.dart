import 'package:app_masterclass/app/about/components/skill_item_widget.dart';
import 'package:app_masterclass/app/about/model/skill_model.dart';
import 'package:flutter/material.dart';

class SkilsWidget extends StatelessWidget {
  final List<SkillModel> skills;
  const SkilsWidget({required this.skills, super.key});

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
                  child: ListView.builder(
                      itemCount: skills.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return SkillItemWidget(
                            title: skills[index].skillName,
                            experienceLevel: skills[index].skillAccuracy);
                      })))
        ],
      ),
    );
  }
}
