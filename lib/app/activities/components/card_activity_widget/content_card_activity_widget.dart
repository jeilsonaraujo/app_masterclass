import 'package:flutter/material.dart';

class ContentCardActivityWidget extends StatefulWidget {
  final String content;
  const ContentCardActivityWidget({super.key, required this.content});

  @override
  State<ContentCardActivityWidget> createState() =>
      _ContentCardActivityWidgetState();
}

class _ContentCardActivityWidgetState extends State<ContentCardActivityWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(widget.content),
    );
  }
}
