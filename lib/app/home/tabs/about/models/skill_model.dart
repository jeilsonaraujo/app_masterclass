// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SkillModel {
  final String skillName;
  final double skillAccuracy;

  SkillModel({
    required this.skillName,
    required this.skillAccuracy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skillName': skillName,
      'skillAccuracy': skillAccuracy,
    };
  }

  factory SkillModel.fromMap(Map<String, dynamic> map) {
    return SkillModel(
      skillName: map['skillName'] as String,
      skillAccuracy: map['skillAccuracy'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory SkillModel.fromJson(String source) =>
      SkillModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
