import 'package:app_masterclass/app/activities/components/card_repository_widget/content_card_repository_widget.dart';
import 'package:flutter/material.dart';

import 'package:app_masterclass/app/activities/components/card_repository_widget/footer_card_repository_widget.dart';
import 'package:app_masterclass/app/activities/components/card_repository_widget/header_card_repository_widget.dart';

class CardRepositoryWidget extends StatefulWidget {
  final IconData icon;
  final String title;
  final String amountOfExercises;
  final String content;

  const CardRepositoryWidget({
    required this.icon,
    required this.title,
    required this.amountOfExercises,
    required this.content,
    super.key,
  });

  @override
  State<CardRepositoryWidget> createState() => _CardRepositoryWidgetState();
}

class _CardRepositoryWidgetState extends State<CardRepositoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        height: 202,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeaderCardRepositoryWidget(
              icon: widget.icon,
              title: widget.title,
              amountOfExercises: widget.amountOfExercises,
            ),
            ContentCardRepositoryWidget(content: widget.content),
            const FooterCardRepositoryWidget()
          ],
        ),
      ),
    );
  }
}
