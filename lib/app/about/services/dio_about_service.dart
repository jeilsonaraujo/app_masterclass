import 'package:app_masterclass/app/about/services/about_service.dart';

import 'package:dio/dio.dart';

import '../model/dev_model.dart';

class DioAboutService extends IAboutService {
  @override
  Future<DevModel> getGitHubUser({userName}) async {
    var dio = Dio();
    final response = await dio.get('https://api.github.com/users/$userName');

    return DevModel.fromMap(response.data);
  }
}
