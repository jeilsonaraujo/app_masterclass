import 'package:flutter/material.dart';

import 'package:app_masterclass/app/home/tabs/about/models/dev_model.dart';
import 'package:app_masterclass/components/header_page_widget.dart';
import 'package:app_masterclass/app/home/tabs/about/components/skills_widget.dart';
import 'package:app_masterclass/app/home/tabs/about/components/card_about_widget.dart';
import 'package:app_masterclass/app/home/tabs/about/dependencies/dependency_injection.dart';
import 'package:app_masterclass/app/home/tabs/about/components/favorite_tecnologies_list.dart';

import 'blocs/about_events.dart';
import 'blocs/about_state.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dependencies = DependencyInjection.of(context);

    final aboutBloc = dependencies.aboutBloc;
    aboutBloc.inputAbout.add(LoadAboutEvent(userName: 'decripter'));

    return Scaffold(
        appBar: HeaderPageWidget(title: 'Sobre o dev'),
        body: StreamBuilder<AboutState>(
            stream: aboutBloc.stream,
            builder: (context, AsyncSnapshot<AboutState> snapshot) {
              final dev = snapshot.data?.aboutModel.devModel ??
                  DevModel(
                    avatarUrl: '',
                    name: '',
                    bio: '',
                    blog: '',
                  );
              final favoritesTecnologies =
                  snapshot.data?.aboutModel.favoriteTecnologies ?? [];
              final skills = snapshot.data?.aboutModel.skills ?? [];
              return Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                  child: SingleChildScrollView(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardAboutWidget(
                        urlImage: dev.avatarUrl,
                        userName: dev.name,
                        bio: dev.bio,
                      ),
                      FavoriteTecnologiesList(
                          favoritesTecnologies: favoritesTecnologies),
                      SkilsWidget(skills: skills),
                    ],
                  )));
            }));
  }
}
