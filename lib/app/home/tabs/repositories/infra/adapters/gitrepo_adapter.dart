import '../../domain/entities/gitrepo.dart';

class GitRepoAdapter {
  static GitRepo fromJson(dynamic data) {
    return GitRepo(
      name: data['name'],
      commits: 0,
      stars: 0,
    );
  }
}
