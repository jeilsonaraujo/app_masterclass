// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FavoriteTecnologyModel {
  final String tecnology;
  final String urlIcon;

  FavoriteTecnologyModel({
    required this.tecnology,
    required this.urlIcon,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tecnology': tecnology,
      'urlIcon': urlIcon,
    };
  }

  factory FavoriteTecnologyModel.fromMap(Map<String, dynamic> map) {
    return FavoriteTecnologyModel(
      tecnology: map['tecnology'] as String,
      urlIcon: map['urlIcon'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FavoriteTecnologyModel.fromJson(String source) =>
      FavoriteTecnologyModel.fromMap(
          json.decode(source) as Map<String, dynamic>);
}
