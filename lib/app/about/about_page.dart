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
    );
  }
}
