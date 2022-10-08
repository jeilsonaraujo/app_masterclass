import 'package:app_masterclass/app/home/tabs/about/models/about_model.dart';

abstract class AboutState {
  AboutModel aboutModel;
  AboutState({required this.aboutModel});
}

class InitialAboutState extends AboutState {
  InitialAboutState({required super.aboutModel});
}

class SuccessAboutState extends AboutState {
  SuccessAboutState({required aboutModel}) : super(aboutModel: aboutModel);
}
//todo add errorstate