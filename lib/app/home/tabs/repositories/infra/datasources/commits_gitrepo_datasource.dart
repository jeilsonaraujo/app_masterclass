abstract class ICommitsGitRepoDatasource {
  Future<List> getCommitsRepo({
    required String repositoryName,
  });
}
