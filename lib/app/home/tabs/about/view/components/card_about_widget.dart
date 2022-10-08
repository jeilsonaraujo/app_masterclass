import 'package:app_masterclass/app/home/tabs/about/models/dev_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardAboutWidget extends StatefulWidget {
  final DevModel devModel;

  const CardAboutWidget({
    super.key,
    required this.devModel,
  });

  @override
  State<CardAboutWidget> createState() => _CardAboutWidgetState();
}

class _CardAboutWidgetState extends State<CardAboutWidget> {
  @override
  Widget build(BuildContext context) {
    final String avatarUrl = widget.devModel.avatarUrl;
    final String name = widget.devModel.name;
    final String bio = widget.devModel.bio;

    return Container(
      margin: const EdgeInsets.all(14.0),
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
              avatarUrl.isNotEmpty
                  ? Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 2.5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: avatarUrl.isNotEmpty
                            ? Image.network(avatarUrl, fit: BoxFit.contain)
                            : const CircularProgressIndicator(),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(
                              color: Theme.of(context).indicatorColor,
                            ),
                          )),
                    ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 23.0, right: 23, top: 15.0),
                child: Text(
                  bio,
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
