import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardAboutWidget extends StatefulWidget {
  final String urlImage;
  final String userName;
  final String bio;
  const CardAboutWidget({
    super.key,
    required this.urlImage,
    required this.userName,
    required this.bio,
  });

  @override
  State<CardAboutWidget> createState() => _CardAboutWidgetState();
}

class _CardAboutWidgetState extends State<CardAboutWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        color: Theme.of(context).cardColor,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2.5),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: !widget.urlImage.isEmpty
                      ? Image.network(widget.urlImage, fit: BoxFit.contain)
                      : CircularProgressIndicator(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.userName,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 23.0, right: 23, top: 15.0),
                child: Text(
                  widget.bio,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.whatsapp)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.githubAlt)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.instagram)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.facebookF)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
