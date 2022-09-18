import '../../domain/entities/gitrepo.dart';

abstract class GitRepoState {}

class SuccessGitRepoState implements GitRepoState {
  final List<GitRepo> posts;

  SuccessGitRepoState(this.posts);
}

class EmptyGitRepoState extends SuccessGitRepoState {
  EmptyGitRepoState() : super([]);
}

class LoadingGitRepoState extends GitRepoState {}

class ErrorGitRepoState extends GitRepoState {
  final String message;

  ErrorGitRepoState(this.message);
}
