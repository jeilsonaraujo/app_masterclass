import 'package:app_masterclass/app/home/tabs/about/dependencies/about_injections.dart';
import 'package:app_masterclass/app/home/tabs/about/services/about_service/dio_about_service.dart';
import 'package:flutter/material.dart';

import '../bloc/about_bloc.dart';
import '../services/technologies_and_skills_service/dio_technologies_and_skills_service.dart';

class DependencyInjection extends InheritedWidget {
  DependencyInjection({super.key, required super.child});
  //

  final AboutInjection aboutInjection = AboutInjection(
      aboutBloc:
          AboutBloc(DioAboutService(), DioTechnologiesAndSkillsService()));

  AboutBloc get aboutBloc => aboutInjection.aboutBloc;

  static of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<DependencyInjection>()!;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
