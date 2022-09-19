import 'package:app_masterclass/app/repositories/presenter/bloc/repository_bloc.dart';
import 'package:app_masterclass/app/repositories/presenter/bloc/repository_events.dart';
import 'package:app_masterclass/app/repositories/presenter/bloc/repository_state.dart';
import 'package:app_masterclass/app/repositories/presenter/dependencies/repository_dependencies.dart';
import 'package:flutter/material.dart';

import '../../../../components/header_page_widget.dart';
import 'components/repository_card.dart';

class RepositoriesPage extends StatefulWidget {
  const RepositoriesPage({super.key});

  @override
  State<RepositoriesPage> createState() => _RepositoriesPageState();
}

class _RepositoriesPageState extends State<RepositoriesPage> {
  @override
  Widget build(BuildContext context) {
    //
    final dependencies = RepositoryDependency.of(context);
    final repoBloc = dependencies.repoBloc;
    repoBloc.inputRepo.add(LoadRepositoryEvent());
    //
    return Scaffold(
        appBar: HeaderPageWidget(title: 'Repositórios'),
        body: StreamBuilder<RepositoryState>(
          stream: repoBloc.stream,
          builder: (context, AsyncSnapshot<RepositoryState> snapshot) {
            final reposList = snapshot.data?.repos ?? [];
            return ListView.builder(
                itemCount: reposList.length,
                itemBuilder: (context, index) {
                  return CardRepositoryWidget(
                    repositoryName: reposList[index].name,
                    repositoryCommits: reposList[index].commits,
                    repositoryStars: reposList[index].stars,
                  );
                });
          },
        ));
  }
}
