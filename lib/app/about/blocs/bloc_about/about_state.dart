import 'package:app_masterclass/app/about/models/dev_model.dart';

abstract class AboutState {
  DevModel devModel;
  AboutState({required this.devModel});
}

class InitialAboutState extends AboutState {
  InitialAboutState({required super.devModel});
}

class SuccessAboutState extends AboutState {
  SuccessAboutState({required devModel}) : super(devModel: devModel);
}
