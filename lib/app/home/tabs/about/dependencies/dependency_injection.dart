import 'package:app_masterclass/app/home/tabs/about/dependencies/about_injections.dart';
import 'package:app_masterclass/app/home/tabs/about/blocs/bloc_about/about_bloc.dart';
import 'package:app_masterclass/app/home/tabs/about/blocs/bloc_skills/skills_bloc.dart';
import 'package:app_masterclass/app/home/tabs/about/services/about_service/dio_about_service.dart';
import 'package:app_masterclass/app/home/tabs/about/services/skills_service/dio_skills_service.dart';
import 'package:app_masterclass/app/home/tabs/about/dependencies/skills_injection.dart';
import 'package:flutter/material.dart';

class DependencyInjection extends InheritedWidget {
  DependencyInjection({super.key, required super.child});
  //
  final SkillsInjection skillsInjection =
      SkillsInjection(skillsBloc: SkillsBloc(DioSkillsService()));

  final AboutInjection aboutInjection =
      AboutInjection(aboutBloc: AboutBloc(DioAboutService()));

  SkillsBloc get skillsBloc => skillsInjection.skillsBloc;
  AboutBloc get aboutBloc => aboutInjection.aboutBloc;

  static of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<DependencyInjection>()!;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
