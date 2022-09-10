import 'package:app_masterclass/app/about/components/favorite_tecnology_widget.dart';
import 'package:flutter/material.dart';

class RollerFavoriteTecnologies extends StatelessWidget {
  const RollerFavoriteTecnologies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Tecnologias Favoritas'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                FavoriteTecnologyWidget(),
                FavoriteTecnologyWidget(),
                FavoriteTecnologyWidget(),
                FavoriteTecnologyWidget(),
                FavoriteTecnologyWidget(),
                FavoriteTecnologyWidget(),
                FavoriteTecnologyWidget(),
                FavoriteTecnologyWidget(),
                FavoriteTecnologyWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
