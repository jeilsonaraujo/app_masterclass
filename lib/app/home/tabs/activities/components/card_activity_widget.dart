import 'package:flutter/material.dart';

import 'package:app_masterclass/app/activities/components/card_activity_widget/content_card_activity_widget.dart';
import 'package:app_masterclass/app/activities/components/card_activity_widget/footer_card_activity_widget.dart';
import 'package:app_masterclass/app/activities/components/card_activity_widget/header_card_activity_widget.dart';

class CardActivityWidget extends StatefulWidget {
  final Widget icon;
  final String title;
  final String amountOfExercises;
  final String content;
  final void Function() navigateTo;

  const CardActivityWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.amountOfExercises,
    required this.content,
    required this.navigateTo,
  });

  @override
  State<CardActivityWidget> createState() => _CardActivityWidgetState();
}

class _CardActivityWidgetState extends State<CardActivityWidget> {
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
            HeaderCardActivityWidget(
                icon: widget.icon,
                title: widget.title,
                amountOfExercises: widget.amountOfExercises),
            ContentCardActivityWidget(content: widget.content),
            FooterCardActivityWidget(navigateTo: widget.navigateTo)
          ],
        ),
      ),
    );
  }
}
