import 'package:app_masterclass/app/home/tabs/about/models/dev_skills_model.dart';
import 'package:app_masterclass/security/hasura_key.dart';

import 'package:dio/dio.dart';

import 'technologies_and_skills_service.dart';

class DioTechnologiesAndSkillsService extends ITechnologiesAndSkillsService {
  @override
  Future<DevSkillsModel> getDevTechnologiesAndSkills({url}) async {
    var dio = Dio();
    final response = await dio.get(
      url,
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "x-hasura-admin-secret": HasuraKey.key
        },
      ),
    );
    return DevSkillsModel.fromMap(response.data);
  }
}
