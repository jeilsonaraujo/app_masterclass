// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:app_masterclass/app/about/models/favorite_tecnologies_model.dart';
import 'package:app_masterclass/app/about/models/skill_model.dart';

class DevSkillsModel {
  final List<FavoriteTecnologyModel> favoritesTecnologies;
  final List<SkillModel> skills;
  DevSkillsModel({
    required this.favoritesTecnologies,
    required this.skills,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'favoritesTecnologies':
          favoritesTecnologies.map((x) => x.toMap()).toList(),
      'skills': skills.map((x) => x.toMap()).toList(),
    };
  }

//Map<String, List<Map<String, Object>>>
  factory DevSkillsModel.fromMap(Map<String, dynamic> map) {
    return DevSkillsModel(
      favoritesTecnologies: List<FavoriteTecnologyModel>.from(
        (map['favoritesTecnologies'] as List<dynamic>)
            .map<FavoriteTecnologyModel>(
          (x) => FavoriteTecnologyModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      skills: List<SkillModel>.from(
        (map['skills'] as List<dynamic>).map<SkillModel>(
          (x) => SkillModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory DevSkillsModel.fromJson(String source) =>
      DevSkillsModel.fromMap(json.decode(source)
          as Map<String, List<Map<String, Map<String, Object>>>>);
}
