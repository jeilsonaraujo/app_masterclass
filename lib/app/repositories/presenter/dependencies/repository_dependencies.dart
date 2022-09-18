import 'package:app_masterclass/app/repositories/domain/entities/gitrepo.dart';
import 'package:app_masterclass/app/repositories/domain/usecases/get_posts.dart';
import 'package:app_masterclass/app/repositories/presenter/dependencies/repo_injections.dart';
import 'package:app_masterclass/app/repositories/presenter/states/repo_state.dart';
import 'package:flutter/material.dart';
import 'package:uno/uno.dart';

import '../../external/datasources/gitrepo_datasource.dart';
import '../../infra/repositories/post_repository.dart';
import '../bloc/repository_bloc.dart';

class RepositoryDependency extends InheritedWidget {
  RepositoryDependency({super.key, required super.child});

  final RepoInjection repoInjection = RepoInjection(
      repoBloc: BlocRepository(
          GetGitRepo(GitRepoRepository(GitRepoDatasource(Uno())))));
  BlocRepository get repoBloc => repoInjection.repoBloc;

  static of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<RepositoryDependency>()!;
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
