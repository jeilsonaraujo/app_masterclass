import 'package:app_masterclass/app/activities/details/header_details_page_widget.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  const DetailsPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderDetailsPageWidget(title: title),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
