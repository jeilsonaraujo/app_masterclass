import 'package:app_masterclass/app/activities/details/header_details_page_widget.dart';
import 'package:flutter/material.dart';

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
        appBar: HeaderDetailsPageWidget(title: title),
        body: ListView.builder(
          itemCount: amountOfExercises,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(left: 11.0, right: 11.0, bottom: 10.0),
              child: Container(
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
                            child: Text((index + 1).toString())),
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
              ),
            );
          },
        ));
  }
}
