import 'package:flutter/material.dart';

class FavoriteTecnologyWidget extends StatelessWidget {
  final String imageUrl;
  final String tecnologyName;
  const FavoriteTecnologyWidget({
    super.key,
    required this.imageUrl,
    required this.tecnologyName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.only(top: 14.0, left: 18, right: 18),
          child: Column(
            children: [
              Image.network(
                imageUrl,
                width: 35,
                color: Theme.of(context).indicatorColor,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text(tecnologyName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
