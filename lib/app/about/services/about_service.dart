import 'package:app_masterclass/app/about/model/dev_model.dart';

abstract class IAboutService {
  Future<DevModel> getGitHubUser({userName});
}
