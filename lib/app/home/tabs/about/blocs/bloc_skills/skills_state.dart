import 'package:app_masterclass/app/about/models/dev_skills_model.dart';

abstract class SkillsState {
  DevSkillsModel devSkillsModel;
  SkillsState({required this.devSkillsModel});
}

class InitialSkillsState extends SkillsState {
  InitialSkillsState({required super.devSkillsModel});
}

class SuccessSkillsState extends SkillsState {
  SuccessSkillsState({required devSkillsModel})
      : super(devSkillsModel: devSkillsModel);
}
