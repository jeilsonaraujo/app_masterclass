import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';

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
    when(repoDatasource.getRepos()).thenAnswer((_) async => <dynamic>[]);

    when(commitsDatasource.getCommitsRepo(
            userName: 'userName', repositoryName: anyNamed('repositoryName')))
        .thenAnswer((_) async => <dynamic>[]);

    when(starsDatasource.getStarsRepo(
            repositoryName: anyNamed('repositoryName')))
        .thenAnswer((_) async => <dynamic>[]);

    final result = await repository.getRepos(userName: 'userName');

    expect(result.fold(id, id), isA<List<GitRepo>>());
  });
}
