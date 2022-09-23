import 'dart:async';

import 'package:app_masterclass/app/home/tabs/about/blocs/bloc_skills/skills_events.dart';
import 'package:app_masterclass/app/home/tabs/about/blocs/bloc_skills/skills_state.dart';
import 'package:app_masterclass/app/home/tabs/about/models/dev_skills_model.dart';
import 'package:app_masterclass/app/home/tabs/about/services/skills_service/skills_service.dart';

class SkillsBloc {
  final ISkillsService _skillsService;

  final StreamController<SkillsEvent> _inputSkillsController =
      StreamController<SkillsEvent>.broadcast();
  final StreamController<SkillsState> _outputSkillsController =
      StreamController<SkillsState>.broadcast();

  Sink<SkillsEvent> get inputSkills => _inputSkillsController.sink;
  Stream<SkillsState> get stream => _outputSkillsController.stream;

  SkillsBloc(this._skillsService) {
    _inputSkillsController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(SkillsEvent event) async {
    var devSkills = DevSkillsModel(
      favoritesTecnologies: [],
      skills: [],
    );

    if (event is LoadSkillsEvent) {
      devSkills = await _skillsService.getDevSkills(url: event.devModel.blog);
    } else {
      devSkills = DevSkillsModel(
        favoritesTecnologies: [],
        skills: [],
      );
    }
    _outputSkillsController.add(SuccessSkillsState(devSkillsModel: devSkills));
  }
}
