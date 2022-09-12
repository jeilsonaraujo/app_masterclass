import 'package:app_masterclass/app/about/components/favorite_tecnology_widget.dart';
import 'package:app_masterclass/app/about/model/favorite_tecnologies_model.dart';
import 'package:flutter/material.dart';

class RollerFavoriteTecnologies extends StatelessWidget {
  final List<FavoriteTecnologyModel> favoritesTecnologies;
  const RollerFavoriteTecnologies(
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
