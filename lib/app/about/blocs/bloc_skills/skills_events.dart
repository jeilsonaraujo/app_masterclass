import 'package:app_masterclass/app/about/models/dev_model.dart';

abstract class SkillsEvent {}

class LoadSkillsEvent extends SkillsEvent {
  DevModel devModel;
  LoadSkillsEvent({required this.devModel});
}