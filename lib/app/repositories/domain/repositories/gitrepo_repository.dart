import 'package:fpdart/fpdart.dart';

import '../entities/gitrepo.dart';
import '../errors/errors.dart';

abstract class IGitRepoRepository {
  Future<Either<IGitRepoException, List<GitRepo>>> getRepos();
}
