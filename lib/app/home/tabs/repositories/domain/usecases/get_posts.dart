import 'package:fpdart/fpdart.dart';

import '../entities/gitrepo.dart';
import '../errors/errors.dart';
import '../repositories/gitrepo_repository.dart';

abstract class IGetGitRepos {
  Future<Either<IGitRepoException, List<GitRepo>>> call();
}

class GetGitRepo implements IGetGitRepos {
  final IGitRepoRepository repository;

  GetGitRepo(this.repository);

  @override
  Future<Either<IGitRepoException, List<GitRepo>>> call() async {
    return await repository.getRepos();
  }
}
