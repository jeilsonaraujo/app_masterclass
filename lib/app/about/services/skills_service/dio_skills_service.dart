import 'package:app_masterclass/app/about/models/dev_skills_model.dart';
import 'package:app_masterclass/app/about/services/skills_service/skills_service.dart';
import 'package:app_masterclass/security/hasura_key.dart';

import 'package:dio/dio.dart';

class DioSkillsService extends ISkillsService {
  @override
  Future<DevSkillsModel> getDevSkills({url}) async {
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
    return DevSkillsModel.fromMap(response.data);
  }
}
