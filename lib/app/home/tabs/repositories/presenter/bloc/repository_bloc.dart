// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:app_masterclass/app/repositories/presenter/bloc/repository_state.dart';

import '../../domain/usecases/get_posts.dart';
import 'repository_events.dart';

class BlocRepository {
  final IGetGitRepos _repositoryRepo;

  final StreamController<RepositoryEvents> _inputRepoController =
      StreamController<RepositoryEvents>.broadcast();
  final StreamController<RepositoryState> _outputRepoontroller =
      StreamController<RepositoryState>.broadcast();

  Sink<RepositoryEvents> get inputRepo => _inputRepoController.sink;
  Stream<RepositoryState> get stream => _outputRepoontroller.stream;

  BlocRepository(this._repositoryRepo) {
    _inputRepoController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(RepositoryEvents event) async {
    if (event is LoadRepositoryEvent) {
      final result = await _repositoryRepo.call();

      result.fold((l) {}, (r) {
        _outputRepoontroller.add(SuccessGitRepoState(repos: r));
      });
    }
  }
}
