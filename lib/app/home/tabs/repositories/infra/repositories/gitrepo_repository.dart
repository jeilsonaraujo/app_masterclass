// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fpdart/fpdart.dart';

import '../../domain/entities/gitrepo.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/gitrepo_repository.dart';
import '../datasources/commits_gitrepo_datasource.dart';
import '../datasources/gitrepo_datasource.dart';
import '../datasources/stars_gitrepo_datasource.dart';
import '../models/gitrepo_infra_model.dart';

class GitRepoRepository extends IGitRepoRepository {
  final IGitRepoDatasource gitrepoDatasource;
  final ICommitsGitRepoDatasource commitGitRepoDatasource;
  final IStarsGitRepoDatasource starGitRepoDatasource;

  GitRepoRepository({
    required this.gitrepoDatasource,
    required this.commitGitRepoDatasource,
    required this.starGitRepoDatasource,
  });

  @override
  Future<Either<IGitRepoException, List<GitRepo>>> getRepos() async {
    try {
      final list = await gitrepoDatasource.getRepos();

      final nameReposList = list.map(GitRepoInfraModel.fromJson).toList();
      const limitOfReposToFetchData = 5;
      //without token the github's api has a limit of 60 interactions
      final List<GitRepo> gitRepositories = [];
      for (int actualLoopRepo = 0;
          actualLoopRepo < limitOfReposToFetchData;
          actualLoopRepo++) {
//github repository name

        String repositoryName = nameReposList[actualLoopRepo].toString();

//commits

        var resultCommits = await commitGitRepoDatasource.getCommitsRepo(
            repositoryName: repositoryName);
        int commitsAmount = resultCommits.length;

//stars

        var resultStars = await starGitRepoDatasource.getStarsRepo(
            repositoryName: repositoryName);
        int starsAmount = resultStars.length;

        gitRepositories.add(GitRepo(
          name: repositoryName,
          commits: commitsAmount,
          stars: starsAmount,
        ));
      }
      return right(gitRepositories);
    } on IGitRepoException catch (e) {
      return left(e);
    }
  }
}
