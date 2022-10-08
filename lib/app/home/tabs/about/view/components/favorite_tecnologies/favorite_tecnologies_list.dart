import 'package:app_masterclass/app/home/tabs/about/models/favorite_tecnologies_model.dart';
import 'package:flutter/material.dart';

import 'favorite_tecnology_widget.dart';

class FavoriteTecnologiesList extends StatelessWidget {
  final List<FavoriteTecnologyModel> favoritesTecnologies;
  const FavoriteTecnologiesList(
      {super.key, required this.favoritesTecnologies});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Tecnologias Favoritas'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: favoritesTecnologies.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FavoriteTecnologyWidget(
                      imageUrl: favoritesTecnologies[index].urlIcon,
                      tecnologyName: favoritesTecnologies[index].tecnology,
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
