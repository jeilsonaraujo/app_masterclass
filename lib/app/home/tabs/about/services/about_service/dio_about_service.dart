import 'package:app_masterclass/app/home/tabs/about/models/dev_model.dart';
import 'package:app_masterclass/app/home/tabs/about/services/about_service/about_service.dart';
import 'package:dio/dio.dart';

class DioAboutService extends IAboutService {
  @override
  Future<DevModel> getGitHubUser({userName}) async {
    var dio = Dio();
    final response = await dio.get('https://api.github.com/users/$userName');

    return DevModel.fromJson(response.data);
  }
}
