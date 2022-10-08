import 'package:app_masterclass/app/home/tabs/about/models/dev_skills_model.dart';

abstract class ITechnologiesAndSkillsService {
  Future<DevSkillsModel> getDevTechnologiesAndSkills({url});
}
