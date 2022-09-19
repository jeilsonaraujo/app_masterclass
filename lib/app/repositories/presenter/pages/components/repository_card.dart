import 'package:flutter/material.dart';

class CardRepositoryWidget extends StatefulWidget {
  final String repositoryName;
  final int repositoryStars;
  final int repositoryCommits;
  const CardRepositoryWidget({
    required this.repositoryName,
    required this.repositoryStars,
    required this.repositoryCommits,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Repository name:'),
              Text(widget.repositoryName.toUpperCase(),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Commits:'),
                  Text('${widget.repositoryCommits}',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Stars:'),
                  Text('${widget.repositoryStars}',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
