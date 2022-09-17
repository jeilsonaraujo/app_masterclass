import 'package:app_masterclass/app/repositories/domain/entities/gitrepo.dart';
import 'package:app_masterclass/app/repositories/domain/repositories/gitrepo_repository.dart';
import 'package:app_masterclass/app/repositories/domain/usecases/get_posts.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

class IGitRepoRepositoryMock extends Mock implements IGitRepoRepository {}

void main() {
  final repository = IGitRepoRepositoryMock();
  final usecase = GetGitRepo(repository);
  List<GitRepo> list = [
    GitRepo(name: 'test', commits: 1, stars: 1),
    GitRepo(name: 'test2', commits: 1, stars: 1),
  ];
  test('shoud return a List<GitRepo>', () async {
    when(() => repository.getRepos()).thenAnswer((_) async => right(list));
    final result = await usecase();
    expect(result.fold(id, id), isA<List<GitRepo>>());
  });

  test('shoud return name of first element', () async {
    when(() => repository.getRepos()).thenAnswer((_) async => right(list));
    final result = await usecase();
    expect(result.foldRight(result, (acc, b) => b.first.name), 'test');
  });
}
