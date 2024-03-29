import 'package:app_masterclass/app/home/tabs/about/dependencies/dependency_injection.dart';
import 'package:app_masterclass/app/home/tabs/repositories/presenter/dependencies/repository_dependencies.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:app_masterclass/app/home/tabs/about/view/about_page.dart';
import 'package:app_masterclass/app/home/tabs/activities/activities_page.dart';
import 'package:app_masterclass/app/home/tabs/repositories/presenter/pages/repositories_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> tabsPages = [
    const ActivitiesPage(),
    RepositoryDependency(child: const RepositoriesPage()),
    DependencyInjection(child: const AboutPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        animationDuration: const Duration(milliseconds: 200),
        length: tabsPages.length,
        child: Scaffold(
          bottomNavigationBar: menu(),
          body: TabBarView(
            children: tabsPages,
          ),
        ));
  }

  Widget menu() {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Theme.of(context).backgroundColor,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Theme.of(context).cardColor),
              labelColor: Theme.of(context).indicatorColor,
              tabs: [
                Tab(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22),
                    child: Image.asset(
                      'assets/feather-target/Icon feather-target.png',
                      scale: 0.7,
                      color: Theme.of(context).indicatorColor,
                    ),
                  ),
                ),
                Tab(
                  //TODO put a separator here
                  //text: "Repositórios",
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22),
                    child: Icon(
                      FontAwesomeIcons.github,
                      color: Theme.of(context).indicatorColor,
                      size: 40,
                    ),
                  ),
                ),
                Tab(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 22.0, right: 22),
                    child: Icon(
                      Icons.person,
                      color: Theme.of(context).indicatorColor,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 0, right: 0, bottom: 10, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Text(
                    'Atividades',
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Repositórios',
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Sobre o dev',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
