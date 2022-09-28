abstract class ICommitsGitRepoDatasource {
  Future<List> getCommitsRepo({
    required repositoryName,
  });
}
