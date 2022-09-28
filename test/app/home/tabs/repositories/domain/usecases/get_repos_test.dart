import 'package:app_masterclass/app/home/tabs/repositories/domain/entities/gitrepo.dart';
import 'package:app_masterclass/app/home/tabs/repositories/domain/repositories/gitrepo_repository.dart';
import 'package:app_masterclass/app/home/tabs/repositories/domain/usecases/get_repos.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class IGitRepoRepositoryMock extends Mock implements IGitRepoRepository {}

void main() {
  IGitRepoRepository repository = IGitRepoRepositoryMock();

  test('should return a list of GitRepo', () async {
    when(() => repository.getRepos())
        .thenAnswer((_) async => const Right(<GitRepo>[]));
    final usecase = GetGitRepo(repository);
    final result = await usecase();
    expect(result.fold((l) => null, (r) => r), isA<List<GitRepo>>());
  });
}
