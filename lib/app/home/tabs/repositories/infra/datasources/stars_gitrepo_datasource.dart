abstract class IStarsGitRepoDatasource {
  Future<List> getStarsRepo({required String repositoryName});
}
