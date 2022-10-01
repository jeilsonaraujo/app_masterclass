import 'package:fpdart/fpdart.dart';

import '../entities/gitrepo.dart';
import '../errors/errors.dart';
import '../repositories/gitrepo_repository.dart';

abstract class IGetGitRepos {
  Future<Either<IGitRepoException, List<GitRepo>>> call(
      {required String userName});
}

class GetGitRepo implements IGetGitRepos {
  final IGitRepoRepository repository;

  GetGitRepo(this.repository);

  @override
  Future<Either<IGitRepoException, List<GitRepo>>> call(
      {required String userName}) async {
    return await repository.getRepos(userName: userName);
  }
}
