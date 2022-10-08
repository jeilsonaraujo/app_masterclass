import 'package:app_masterclass/app/home/tabs/about/models/dev_model.dart';

abstract class IAboutService {
  Future<DevModel> getGitHubUser({userName});
}
