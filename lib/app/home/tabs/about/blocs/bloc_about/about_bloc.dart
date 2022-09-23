import 'dart:async';

import 'package:app_masterclass/app/home/tabs/about/blocs/bloc_about/about_events.dart';
import 'package:app_masterclass/app/home/tabs/about/blocs/bloc_about/about_state.dart';
import 'package:app_masterclass/app/home/tabs/about/models/dev_model.dart';
import 'package:app_masterclass/app/home/tabs/about/services/about_service/about_service.dart';

class AboutBloc {
  final IAboutService _aboutService;
//TODO tentar fazer tudo com um so bloc
  final StreamController<AboutEvent> _inputAboutController =
      StreamController<AboutEvent>.broadcast();
  final StreamController<AboutState> _outputAboutController =
      StreamController<AboutState>.broadcast();

  Sink<AboutEvent> get inputAbout => _inputAboutController.sink;
  Stream<AboutState> get stream => _outputAboutController.stream;

  AboutBloc(this._aboutService) {
    _inputAboutController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(AboutEvent event) async {
    late DevModel devModel;

    if (event is LoadAboutEvent) {
      devModel = await _aboutService.getGitHubUser(userName: event.userName);
    } else {
      devModel = DevModel(avatar_url: '', name: '', bio: '', blog: '');
    }
    _outputAboutController.add(SuccessAboutState(devModel: devModel));
  }
}
