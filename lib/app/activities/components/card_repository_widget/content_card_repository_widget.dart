import 'package:flutter/material.dart';

class ContentCardRepositoryWidget extends StatefulWidget {
  final String content;
  const ContentCardRepositoryWidget({super.key, required this.content});

  @override
  State<ContentCardRepositoryWidget> createState() =>
      _ContentCardRepositoryWidgetState();
}

class _ContentCardRepositoryWidgetState
    extends State<ContentCardRepositoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(widget.content),
    );
  }
}
