import 'package:app_masterclass/app/about/bloc/about_bloc.dart';
import 'package:app_masterclass/app/about/bloc/about_events.dart';
import 'package:app_masterclass/app/about/bloc/about_state.dart';
import 'package:app_masterclass/app/about/bloc_skills/skills_bloc.dart';
import 'package:app_masterclass/app/about/bloc_skills/skills_events.dart';
import 'package:app_masterclass/app/about/bloc_skills/skills_state.dart';
import 'package:app_masterclass/app/about/components/card_about_widget.dart';
import 'package:app_masterclass/app/about/components/roller_favorite_tecnologies.dart';
import 'package:app_masterclass/app/about/components/skills_widget.dart';
import 'package:app_masterclass/app/about/model/dev_model.dart';
import 'package:flutter/material.dart';

import 'package:app_masterclass/components/header_page_widget.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  late final AboutBloc aboutBloc = AboutBloc();
  @override
  Widget build(BuildContext context) {
    aboutBloc.inputAbout.add(LoadAboutEvent(userName: 'decripter'));

    return Scaffold(
      appBar: HeaderPageWidget(title: 'Sobre o dev'),
      body: StreamBuilder<AboutState>(
          stream: aboutBloc.stream,
          builder: (context, AsyncSnapshot<AboutState> snapshot) {
            final dev = snapshot.data?.devModel ??
                DevModel(avatar_url: '', name: '', bio: '', blog: '');
            final SkillsBloc bloc = SkillsBloc();
            if (dev.blog.isNotEmpty) {
              bloc.inputSkills.add(LoadSkillsEvent(devModel: dev));
            }
            return Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                child: SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  child: StreamBuilder<SkillsState>(
                      stream: bloc.stream,
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
