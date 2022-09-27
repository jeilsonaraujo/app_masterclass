import 'package:flutter/material.dart';

import 'package:app_masterclass/components/header_page_widget.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final int amountOfExercises;
  const DetailsPage({
    super.key,
    required this.title,
    required this.amountOfExercises,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HeaderPageWidget(
          title: title,
          isDetailPage: true,
        ),
        body: ListView.builder(
          itemCount: amountOfExercises,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              height: 64,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: const BorderRadius.all(Radius.circular(50))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            (index + 1).toString(),
                            style: const TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Text(
                      'Exercícios 01',
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
