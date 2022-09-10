import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardAboutWidget extends StatefulWidget {
  const CardAboutWidget({super.key});

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
                  child: Image.network(
                      'https://avatars.githubusercontent.com/u/46649531?v=4',
                      fit: BoxFit.contain),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Jeilson Araujo',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 23.0, right: 23, top: 15.0),
                child: Text(
                  'Mussum Ipsum, cacilds vidis litro abertis. Atirei o pau no gatis, per gatis num morreus.Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
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
