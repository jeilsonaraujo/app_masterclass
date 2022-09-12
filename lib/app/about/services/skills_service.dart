import 'package:app_masterclass/app/about/model/dev_model.dart';
import 'package:app_masterclass/app/about/model/dev_skills_model.dart';

abstract class ISkillsService {
  Future<DevSkillsModel> getDevSkills({url});
}
