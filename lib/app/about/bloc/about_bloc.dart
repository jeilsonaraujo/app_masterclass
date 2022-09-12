import 'dart:async';

import 'package:app_masterclass/app/about/bloc/about_events.dart';
import 'package:app_masterclass/app/about/bloc/about_state.dart';
import 'package:app_masterclass/app/about/model/dev_model.dart';
import 'package:app_masterclass/app/about/services/about_service.dart';
import 'package:app_masterclass/app/about/services/dio_about_service.dart';

class AboutBloc {
  final IAboutService _aboutService = DioAboutService();
  final StreamController<AboutEvent> _inputAboutController =
      StreamController<AboutEvent>();
  final StreamController<AboutState> _outputAboutController =
      StreamController<AboutState>();

  Sink<AboutEvent> get inputAbout => _inputAboutController.sink;
  Stream<AboutState> get stream => _outputAboutController.stream;

  AboutBloc() {
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
