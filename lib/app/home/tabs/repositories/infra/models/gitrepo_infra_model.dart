// ignore_for_file: public_member_api_docs, sort_constructors_first
class GitRepoInfraModel {
  final String gitRepoName;

  GitRepoInfraModel({
    required this.gitRepoName,
  });
  @override
  String toString() {
    return gitRepoName;
  }

  static GitRepoInfraModel fromJson(dynamic data) {
    return GitRepoInfraModel(
      gitRepoName: data['name'],
    );
  }
}
