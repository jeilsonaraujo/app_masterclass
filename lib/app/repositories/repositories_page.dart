import 'package:flutter/material.dart';

import 'package:app_masterclass/components/header_page_widget.dart';

class RepositoriesPage extends StatefulWidget {
  const RepositoriesPage({Key? key}) : super(key: key);

  @override
  State<RepositoriesPage> createState() => _RepositoriesPageState();
}

class _RepositoriesPageState extends State<RepositoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderPageWidget(title: 'Repositórios'),
    );
  }
}
