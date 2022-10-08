// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:uno/uno.dart';

import '../../domain/errors/errors.dart';
import '../../infra/datasources/stars_gitrepo_datasource.dart';

class StarsGitRepoDatasource implements IStarsGitRepoDatasource {
  final String userName;

  final Uno uno;

  StarsGitRepoDatasource({
    required this.userName,
    required this.uno,
  });

  @override
  Future<List> getStarsRepo({required String repositoryName}) async {
    try {
      final response = await uno.get(
          'https://api.github.com/repos/$userName/$repositoryName/stargazers');

      return response.data;
    } catch (e, s) {
      throw DatasourcePostException(e.toString(), s);
    }
  }
}
