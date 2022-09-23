import 'package:app_masterclass/security/hasura_key.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app_masterclass/app/home/tabs/about/models/dev_skills_model.dart';

void main() async {
  test("shoud return data from hasura", () async {
    var url = "https://devskills.hasura.app/api/rest/about_dev";

    var dio = Dio();
    final response = await dio.get(
      url,
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "x-hasura-admin-secret": HasuraKey.Key
        },
      ),
    );
    DevSkillsModel devSkills = DevSkillsModel.fromMap(response.data);
    expect(devSkills.skills.length, 8);
  });

  // var url = "https://devskills.hasura.app/api/rest/about_dev";

  // var dio = Dio();
  // final response = await dio.get(
  //   url,
  //   options: Options(
  //     headers: {
  //       "Content-Type": "application/json",
  //       "x-hasura-admin-secret": ""
  //     },
  //   ),
  // );

  // DevSkillsModel devSkills = DevSkillsModel.fromMap(valueMap);
//   print(devSkills.favoritesTecnologies.length);
//   print(devSkills.skills.length);
}

var apiKey = "knVQH1ddcVfMcmLUXKgFnaiSdEzvwJ1priaATP5e1y5MCzRVYA9X8SFgn2q67bwd";
var data = '''{
    "favoritesTecnologies": [
      {
        "favoritesTecnologies": {
          "tecnology": "Flutter/Dart",
          "urlIcon": "https://img.icons8.com/material-outlined/384/flutter.png"
        }
      },
      {
        "favoritesTecnologies": {
          "tecnology": "Python",
          "urlIcon":
              "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Python_icon_%28black_and_white%29.svg/2048px-Python_icon_%28black_and_white%29.svg.png"
        }
      },
      {
        "favoritesTecnologies": {
          "tecnology": "Linux",
          "urlIcon": "https://cdn-icons-png.flaticon.com/512/25/25719.png"
        }
      },
      {
        "favoritesTecnologies": {
          "tecnology": "Docker",
          "urlIcon":
              "https://assets.stickpng.com/images/5847f2dccef1014c0b5e4871.png"
        }
      },
    ],
    "skills": [
      {
        "skill": {"skillName": "Flutter/Dart", "skillAccuracy": 0.7}
      },
      {
        "skill": {"skillName": "Python", "skillAccuracy": 0.6}
      },
      {
        "skill": {"skillName": "Git", "skillAccuracy": 0.5}
      },
      {
        "skill": {"skillName": "C", "skillAccuracy": 0.12}
      },
      {
        "skill": {"skillName": "C++", "skillAccuracy": 0.12}
      },
      {
        "skill": {"skillName": "HTML", "skillAccuracy": 0.5}
      },
      {
        "skill": {"skillName": "CSS", "skillAccuracy": 0.3}
      },
      {
        "skill": {"skillName": "JavaScript", "skillAccuracy": 0.4}
      },
      {
        "skill": {"skillName": "IOS/Swift", "skillAccuracy": 0.3}
      },
      {
        "skill": {"skillName": "Bash", "skillAccuracy": 0.4}
      },
      {
        "skill": {"skillName": "Androd/Java", "skillAccuracy": 0.3}
      },
      {
        "skill": {"skillName": "Java", "skillAccuracy": 0.4}
      },
      {
        "skill": {"skillName": "Lua", "skillAccuracy": 0.3}
      },
    ]
  }''';
