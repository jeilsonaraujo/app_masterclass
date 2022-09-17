import 'package:fpdart/fpdart.dart';

import '../entities/git_repo_entity.dart';
import '../errors/errors.dart';
import '../repositories/git_repo_repository.dart';

abstract class IGetRepo {
  Future<Either<IGitRepoException, List<GitRepo>>> call();
}

class GetGitRepo implements IGetRepo {
  final IGitRepoDomainRepository repository;

  GetGitRepo(this.repository);

  @override
  Future<Either<IGitRepoException, List<GitRepo>>> call() async {
    return await repository.getRepos();
  }
}
