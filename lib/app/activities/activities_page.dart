import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:app_masterclass/components/header_page_widget.dart';
import 'package:app_masterclass/app/activities/details_page/details_page.dart';
import 'package:app_masterclass/app/activities/components/card_repository_widget.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HeaderPageWidget(title: 'Atividades'),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CardRepositoryWidget(
                  icon: FontAwesomeIcons.personRunning,
                  title: 'Animações',
                  amountOfExercises: '4',
                  content:
                      'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos.',
                  navigateTo: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const DetailsPage(
                          title: 'Animações',
                          amountOfExercises: 4,
                        ),
                      ),
                    );
                  },
                ),
                CardRepositoryWidget(
                  icon: FontAwesomeIcons.glasses,
                  title: 'Leitura de Mockup',
                  amountOfExercises: '2',
                  content:
                      'Aplicação da tecnica de leitura de mockup, contendo 2 exercicios',
                  navigateTo: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const DetailsPage(
                          title: 'Leitura de Mockup',
                          amountOfExercises: 2,
                        ),
                      ),
                    );
                  },
                ),
                CardRepositoryWidget(
                  icon: FontAwesomeIcons.markdown, //TODO! add this icon
                  title: 'Playground',
                  amountOfExercises: '3',
                  content:
                      'Aplicação da tecnica de leitura de mockup, contendo 2 exercicios',
                  navigateTo: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const DetailsPage(
                          title: 'Playground',
                          amountOfExercises: 3,
                        ),
                      ),
                    );
                  },
                ),
                CardRepositoryWidget(
                  icon: FontAwesomeIcons.personRunning,
                  title: 'Animações',
                  amountOfExercises: '4',
                  content:
                      'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos.',
                  navigateTo: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const DetailsPage(
                          title: 'Animações',
                          amountOfExercises: 4,
                        ),
                      ),
                    );
                  },
                ),
                CardRepositoryWidget(
                  icon: FontAwesomeIcons.glasses,
                  title: 'Leitura de Mockup',
                  amountOfExercises: '2',
                  content:
                      'Aplicação da tecnica de leitura de mockup, contendo 2 exercicios',
                  navigateTo: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const DetailsPage(
                          title: 'Leitura de Mockup',
                          amountOfExercises: 2,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
