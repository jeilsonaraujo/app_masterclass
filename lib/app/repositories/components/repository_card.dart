import 'package:flutter/material.dart';

class CardRepositoryWidget extends StatefulWidget {
  const CardRepositoryWidget({
    super.key,
  });

  @override
  State<CardRepositoryWidget> createState() => _CardRepositoryWidgetState();
}

class _CardRepositoryWidgetState extends State<CardRepositoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, left: 18, right: 18),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Repository name:'),
                  Text('reaction_timer'.toUpperCase(),
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Commits:'),
                  Text('6', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Stars:'),
                  Text('6', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
