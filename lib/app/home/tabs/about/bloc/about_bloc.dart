import 'dart:async';

import 'package:app_masterclass/app/home/tabs/about/models/dev_model.dart';
import 'package:app_masterclass/app/home/tabs/about/models/dev_skills_model.dart';
import 'package:app_masterclass/app/home/tabs/about/models/favorite_tecnologies_model.dart';
import 'package:app_masterclass/app/home/tabs/about/models/skill_model.dart';
import 'package:app_masterclass/app/home/tabs/about/services/about_service/about_service.dart';
import 'package:app_masterclass/app/home/tabs/about/services/skills_service/skills_service.dart';

import '../models/about_model.dart';
import 'about_events.dart';
import 'about_state.dart';

class AboutBloc {
  final IAboutService _aboutService;
  final ISkillsService _skillsService;

  final StreamController<AboutEvent> _inputAboutController =
      StreamController<AboutEvent>.broadcast();
  final StreamController<AboutState> _outputAboutController =
      StreamController<AboutState>.broadcast();

  Sink<AboutEvent> get inputAbout => _inputAboutController.sink;
  Stream<AboutState> get stream => _outputAboutController.stream;

  AboutBloc(this._aboutService, this._skillsService) {
    _inputAboutController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(AboutEvent event) async {
    late AboutModel aboutModel;

    if (event is LoadAboutEvent) {
      DevModel dev =
          await _aboutService.getGitHubUser(userName: event.userName);
      DevSkillsModel devSkills =
          await _skillsService.getDevSkills(url: dev.blog);

      List<FavoriteTecnologyModel> tecnologies = devSkills.favoritesTecnologies;
      List<SkillModel> skills = devSkills.skills;
      aboutModel = AboutModel(
        devModel: dev,
        favoriteTecnologies: tecnologies,
        skills: skills,
      );
    } else {
      aboutModel = AboutModel(
          devModel: DevModel(avatarUrl: '', bio: '', blog: '', name: ''),
          favoriteTecnologies: [],
          skills: []);
    }
    _outputAboutController.add(SuccessAboutState(aboutModel: aboutModel));
  }
}
