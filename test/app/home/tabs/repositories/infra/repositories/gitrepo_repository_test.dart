import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';

import 'answers/repos_answer.dart';
import 'answers/commits_answer.dart';
import 'answers/stars_answer.dart';

import 'gitrepo_repository_test.mocks.dart';

import 'package:app_masterclass/app/home/tabs/repositories/domain/entities/gitrepo.dart';
import 'package:app_masterclass/app/home/tabs/repositories/infra/datasources/commits_gitrepo_datasource.dart';
import 'package:app_masterclass/app/home/tabs/repositories/infra/datasources/gitrepo_datasource.dart';
import 'package:app_masterclass/app/home/tabs/repositories/infra/datasources/stars_gitrepo_datasource.dart';
import 'package:app_masterclass/app/home/tabs/repositories/infra/repositories/gitrepo_repository.dart';

@GenerateNiceMocks([MockSpec<IGitRepoDatasource>()])
@GenerateNiceMocks([MockSpec<ICommitsGitRepoDatasource>()])
@GenerateNiceMocks([MockSpec<IStarsGitRepoDatasource>()])
void main() {
  final repoDatasource = MockIGitRepoDatasource();
  final commitsDatasource = MockICommitsGitRepoDatasource();
  final starsDatasource = MockIStarsGitRepoDatasource();
  final repository = GitRepoRepository(
      gitrepoDatasource: repoDatasource,
      commitGitRepoDatasource: commitsDatasource,
      starGitRepoDatasource: starsDatasource);
  test("should return a list of List<GitRepo>", () async {
    when(repoDatasource.getRepos()).thenAnswer((_) async => reposAnswer);

    when(commitsDatasource.getCommitsRepo(
            repositoryName: 'animacoes_expansion_tile'))
        .thenAnswer((_) async => commitsAnswer);

    when(starsDatasource.getStarsRepo(
            repositoryName: 'animacoes_expansion_tile'))
        .thenAnswer((_) async => starAnswer);

    final result = await repository.getRepos();

    expect(result.fold(id, id), isA<List<GitRepo>>());
  });
}
