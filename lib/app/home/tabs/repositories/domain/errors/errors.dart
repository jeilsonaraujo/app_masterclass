abstract class IGitRepoException {
  final String message;
  final StackTrace? stackTrace;

  const IGitRepoException(this.message, [this.stackTrace]);
}

class ArgumentsException extends IGitRepoException {
  const ArgumentsException(super.message, [super.stackTrace]);
}

class DatasourcePostException extends IGitRepoException {
  const DatasourcePostException(super.message, [super.stackTrace]);
}
