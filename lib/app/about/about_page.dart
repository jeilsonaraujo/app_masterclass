import 'package:flutter/material.dart';

import 'package:app_masterclass/app/about/models/dev_model.dart';
import 'package:app_masterclass/components/header_page_widget.dart';
import 'package:app_masterclass/app/about/components/skills_widget.dart';
import 'package:app_masterclass/app/about/components/card_about_widget.dart';
import 'package:app_masterclass/app/about/blocs/bloc_about/about_state.dart';
import 'package:app_masterclass/app/about/blocs/bloc_about/about_events.dart';
import 'package:app_masterclass/app/about/blocs/bloc_skills/skills_state.dart';
import 'package:app_masterclass/app/about/blocs/bloc_skills/skills_events.dart';
import 'package:app_masterclass/app/about/dependencies/dependency_injection.dart';
import 'package:app_masterclass/app/about/components/roller_favorite_tecnologies.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final dependencies = DependencyInjection.of(context);

    final skillsBloc = dependencies.skillsBloc;
    final aboutBloc = dependencies.aboutBloc;
    aboutBloc.inputAbout.add(LoadAboutEvent(userName: 'decripter'));

    return Scaffold(
      appBar: HeaderPageWidget(title: 'Sobre o dev'),
      body: StreamBuilder<AboutState>(
          stream: aboutBloc.stream,
          builder: (context, AsyncSnapshot<AboutState> snapshot) {
            final dev = snapshot.data?.devModel ??
                DevModel(avatar_url: '', name: '', bio: '', blog: '');

            if (dev.blog.isNotEmpty) {
              skillsBloc.inputSkills.add(LoadSkillsEvent(devModel: dev));
            }
            return Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                child: SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  child: StreamBuilder<SkillsState>(
                      stream: skillsBloc.stream,
                      builder: (context, AsyncSnapshot<SkillsState> snapshot) {
                        final favoritesTecnologies = snapshot
                                .data?.devSkillsModel.favoritesTecnologies ??
                            [];
                        final skillsList =
                            snapshot.data?.devSkillsModel.skills ?? [];

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CardAboutWidget(
                              urlImage: dev.avatar_url,
                              userName: dev.name,
                              bio: dev.bio,
                            ),
                            RollerFavoriteTecnologies(
                                favoritesTecnologies: favoritesTecnologies),
                            SkilsWidget(skills: skillsList),
                          ],
                        );
                      }),
                ));
          }),
    );
  }
}
