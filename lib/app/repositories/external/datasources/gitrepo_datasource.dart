import 'package:uno/uno.dart';

import '../../domain/errors/errors.dart';
import '../../infra/datasources/gitrepo_datasource.dart';

class GitRepoDatasource implements IGitRepoDatasource {
  final Uno uno;

  GitRepoDatasource(this.uno);

  @override
  Future<List> getRepos() async {
    try {
      final response =
          await uno.get('https://api.github.com/users/Decripter/repos');

      return response.data;
    } catch (e, s) {
      throw DatasourcePostException(e.toString(), s);
    }
  }
}
