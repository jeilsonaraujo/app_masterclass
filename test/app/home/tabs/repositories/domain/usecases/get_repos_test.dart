import 'package:app_masterclass/app/home/tabs/repositories/domain/entities/gitrepo.dart';
import 'package:app_masterclass/app/home/tabs/repositories/domain/repositories/gitrepo_repository.dart';
import 'package:app_masterclass/app/home/tabs/repositories/domain/usecases/get_repos.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'get_repos_test.mocks.dart';

@GenerateNiceMocks([MockSpec<IGitRepoRepository>()])
void main() {
  final repository = MockIGitRepoRepository();

  test('should return a list of GitRepo', () async {
    when(repository.getRepos(userName: 'userName'))
        .thenAnswer((_) async => const Right(<GitRepo>[]));
    final usecase = GetGitRepo(repository);
    final result = await usecase(userName: 'userName');
    expect(result.fold((l) => null, (r) => r), isA<List<GitRepo>>());
  });
}
