import 'package:flutter/material.dart';

import 'package:app_masterclass/app/activities/components/header_page_widget.dart';
import 'package:app_masterclass/app/activities/components/card_repository_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Theme.of(context).backgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: HeaderPageWidget(
          child: Column(
            children: const [
              CardRepositoryWidget(
                  icon: FontAwesomeIcons.personRunning,
                  title: 'Animações',
                  amountOfExercises: '4',
                  content:
                      'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos.'),
              CardRepositoryWidget(
                  icon: FontAwesomeIcons.glasses,
                  title: 'Leitura de Mockup',
                  amountOfExercises: '2',
                  content:
                      'Aplicação da tecnica de leitura de mockup, contendo 2 exercicios'),
              CardRepositoryWidget(
                  icon: FontAwesomeIcons.markdown,
                  title: 'Leitura de Mockup',
                  amountOfExercises: '2',
                  content:
                      'Aplicação da tecnica de leitura de mockup, contendo 2 exercicios'),
              CardRepositoryWidget(
                  icon: FontAwesomeIcons.glasses,
                  title: 'Leitura de Mockup',
                  amountOfExercises: '2',
                  content:
                      'Aplicação da tecnica de leitura de mockup, contendo 2 exercicios'),
              CardRepositoryWidget(
                  icon: FontAwesomeIcons.glasses,
                  title: 'Leitura de Mockup',
                  amountOfExercises: '2',
                  content:
                      'Aplicação da tecnica de leitura de mockup, contendo 2 exercicios'),
              CardRepositoryWidget(
                  icon: FontAwesomeIcons.glasses,
                  title: 'Leitura de Mockup',
                  amountOfExercises: '2',
                  content:
                      'Aplicação da tecnica de leitura de mockup, contendo 2 exercicios'),
            ],
          ),
        ),
      ),
    ));
  }
}
