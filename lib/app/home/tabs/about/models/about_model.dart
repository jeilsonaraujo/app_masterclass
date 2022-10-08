import 'package:app_masterclass/app/home/tabs/about/models/dev_model.dart';
import 'package:app_masterclass/app/home/tabs/about/models/favorite_tecnologies_model.dart';
import 'package:app_masterclass/app/home/tabs/about/models/skill_model.dart';

class AboutModel {
  final DevModel devModel;
  final List<FavoriteTecnologyModel> favoriteTecnologies;
  final List<SkillModel> skills;
  AboutModel({
    required this.devModel,
    required this.favoriteTecnologies,
    required this.skills,
  });
}
