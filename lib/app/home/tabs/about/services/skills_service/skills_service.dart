import 'package:app_masterclass/app/about/models/dev_skills_model.dart';

abstract class ISkillsService {
  Future<DevSkillsModel> getDevSkills({url});
}
