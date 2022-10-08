// ignore_for_file: null_argument_to_non_null_type

import 'package:uno/uno.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';

import 'commits_gitrepo_datasource_test.mocks.dart';

import 'package:app_masterclass/app/home/tabs/repositories/external/datasources/commits_gitrepo_datasource.dart';

@GenerateNiceMocks([MockSpec<Uno>()])
final unoMock = MockUno();
final commitsDatasource = CommitsGitRepoDatasource(uno: unoMock);

void main() {
  test('Should return a list of data', () async {
    when(unoMock.get('')).thenReturn(Future.value());
  });
}
