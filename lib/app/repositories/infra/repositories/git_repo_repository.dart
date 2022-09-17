import 'package:app_masterclass/app/repositories/infra/adapters/git_repo_adapter.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/errors/errors.dart';
import '../datasources/git_repo_datasource.dart';
import '../../domain/entities/git_repo_entity.dart';
import '../../domain/repositories/git_repo_repository.dart';

class GitRepoRepository extends IGitRepoDomainRepository {
  final IGitRepoInfraDatasource gitRepoDatasource;

  GitRepoRepository(this.gitRepoDatasource);

  @override
  Future<Either<IGitRepoException, List<GitRepo>>> getRepos() async {
    try {
      final list = await gitRepoDatasource.getRepos();

      final repos =
          list.map((e) => GitRepoAdapter.fromJson(dynamic, e)).toList();

      return right(repos);
    } on IGitRepoException catch (e) {
      return left(e);
    }
  }
}
