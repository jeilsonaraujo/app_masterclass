// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_masterclass/app/repositories/domain/entities/gitrepo.dart';

abstract class RepositoryState {
  List<GitRepo> repos;
  RepositoryState({required this.repos});
}

class InitialRepositoryState extends RepositoryState {
  InitialRepositoryState() : super(repos: []);
}

class SuccessGitRepoState extends RepositoryState {
  SuccessGitRepoState({required List<GitRepo> repos}) : super(repos: repos);
}
