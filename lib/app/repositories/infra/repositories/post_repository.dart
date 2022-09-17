import 'package:fpdart/src/either.dart';

import '../../domain/entities/gitrepo.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/gitrepo_repository.dart';
import '../adapters/gitrepo_adapter.dart';
import '../datasources/gitrepo_datasource.dart';

class GitRepoRepository extends IGitRepoRepository {
  final IGitRepoDatasource gitrepoDatasource;

  GitRepoRepository(this.gitrepoDatasource);

  @override
  Future<Either<IGitRepoException, List<GitRepo>>> getRepos() async {
    try {
      final list = await gitrepoDatasource.getRepos();

      final comments = list.map(GitRepoAdapter.fromJson).toList();

      return right(comments);
    } on IGitRepoException catch (e) {
      return left(e);
    }
  }
}
