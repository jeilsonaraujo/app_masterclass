import 'package:fpdart/fpdart.dart';

import '../entities/git_repo_entity.dart';
import '../errors/errors.dart';

abstract class IGitRepoDomainRepository {
  Future<Either<IGitRepoException, List<GitRepo>>> getRepos();
}
