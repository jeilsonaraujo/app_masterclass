import '../../domain/entities/git_repo_entity.dart';

class GitRepoAdapter {
  GitRepoAdapter._();
  static GitRepo fromJson(dynamic, data) {
    return GitRepo(
      name: data['name'],
      commits: 0,
      stars: 0,
    );
  }
}
