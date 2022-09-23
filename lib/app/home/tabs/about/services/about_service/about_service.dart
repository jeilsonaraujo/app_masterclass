import 'package:app_masterclass/app/about/models/dev_model.dart';

abstract class IAboutService {
  Future<DevModel> getGitHubUser({userName});
}
