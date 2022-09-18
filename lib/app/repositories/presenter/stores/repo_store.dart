import 'package:flutter/cupertino.dart';

import '../../domain/usecases/get_posts.dart';
import '../states/repo_state.dart';

class GitRepoStore extends ValueNotifier<GitRepoState> {
  final GetGitRepo getRepos;

  GitRepoStore(this.getRepos) : super(EmptyGitRepoState());

  void emit(GitRepoState newState) => value = newState;

  Future<void> fetchPosts() async {
    emit(LoadingGitRepoState());

    final result = await getRepos.call();

    final newState = result.fold((l) {
      return ErrorGitRepoState(l.message);
    }, (r) {
      return SuccessGitRepoState(r);
    });

    emit(newState);
  }
}
