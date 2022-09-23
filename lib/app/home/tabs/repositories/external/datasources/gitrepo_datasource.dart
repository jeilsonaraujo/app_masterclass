import 'package:uno/uno.dart';

import '../../domain/errors/errors.dart';
import '../../infra/datasources/gitrepo_datasource.dart';

class GitRepoDatasource implements IGitRepoDatasource {
  final Uno uno;
  final String userName;
  GitRepoDatasource(
    this.uno, {
    required this.userName,
  });

  @override
  Future<List> getRepos() async {
    try {
      final response =
          await uno.get('https://api.github.com/users/$userName/repos');

      return response.data;
    } catch (e, s) {
      throw DatasourcePostException(e.toString(), s);
    }
  }
}
