import 'package:app_masterclass/app/about/components/card_about_widget.dart';
import 'package:app_masterclass/app/about/components/roller_favorite_tecnologies.dart';
import 'package:app_masterclass/app/about/components/skills_widget.dart';
import 'package:flutter/material.dart';

import 'package:app_masterclass/components/header_page_widget.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderPageWidget(title: 'Sobre o dev'),
      body: Padding(
        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CardAboutWidget(),
              RollerFavoriteTecnologies(),
              SkilsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
