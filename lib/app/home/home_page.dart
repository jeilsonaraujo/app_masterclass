import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:app_masterclass/app/about/about_page.dart';
import 'package:app_masterclass/app/activities/activities_page.dart';
import 'package:app_masterclass/app/home/header_home_page_widget.dart';
import 'package:app_masterclass/app/repositories/repositories_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        animationDuration: const Duration(milliseconds: 200),
        length: 3,
        child: Scaffold(
          appBar: const HeaderHomePageWidget(),
          bottomNavigationBar: menu(),
          body: const TabBarView(
            children: [
              ActivitiesPage(),
              RepositoriesPage(),
              AboutPage(),
            ],
          ),
        ));
  }

  Widget menu() {
    bool isPortraitMode =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
      color: Theme.of(context).backgroundColor,
      child: TabBar(
        indicator: CircleTabIndicator(
            color: Theme.of(context).cardColor,
            radius: 20,
            isPortraitMode: isPortraitMode),
        labelColor: Theme.of(context).indicatorColor,
        tabs: [
          Tab(
            text: "Atividades",
            icon: Image.asset(
              'assets/feather-target/Icon feather-target.png',
              color: Theme.of(context).indicatorColor,
            ),
          ),
          const Tab(
            text: "Repositórios",
            icon: Icon(FontAwesomeIcons.github),
          ),
          const Tab(
            text: "Sobre o dev",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator(
      {required Color color,
      required double radius,
      required bool isPortraitMode})
      : _painter = _CirclePainter(color, radius, isPortraitMode);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final bool isPortraitMode;
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius, this.isPortraitMode)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    //TODO! test on diferent size device
    double dx = 0.0;
    if (isPortraitMode) {
      dx = offset.dx + 33;
    } else {
      dx = offset.dx + 80;
    }
    final dy = offset.dy + 5;
    const radius = 50.0;

    canvas.drawRRect(
        RRect.fromLTRBAndCorners(dx, dy, dx + 60, 40,
            bottomLeft: const Radius.circular(radius),
            bottomRight: const Radius.circular(radius),
            topRight: const Radius.circular(radius),
            topLeft: const Radius.circular(radius)),
        _paint);
    // canvas.drawRect(circleOffset & const Size(75, 35), _paint);
  }
}
