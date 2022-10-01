abstract class ICommitsGitRepoDatasource {
  Future<List> getCommitsRepo({
    required String userName,
    required String repositoryName,
  });
}
