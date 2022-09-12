import 'dart:async';

import 'package:app_masterclass/app/about/bloc_skills/skills_events.dart';
import 'package:app_masterclass/app/about/bloc_skills/skills_state.dart';
import 'package:app_masterclass/app/about/model/dev_skills_model.dart';
import 'package:app_masterclass/app/about/services/dio_skills_service.dart';
import 'package:app_masterclass/app/about/services/skills_service.dart';

class SkillsBloc {
  final ISkillsService _skillsService = DioSkillsService();
  final StreamController<SkillsEvent> _inputSkillsController =
      StreamController<SkillsEvent>();
  final StreamController<SkillsState> _outputSkillsController =
      StreamController<SkillsState>();

  Sink<SkillsEvent> get inputSkills => _inputSkillsController.sink;
  Stream<SkillsState> get stream => _outputSkillsController.stream;

  SkillsBloc() {
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
