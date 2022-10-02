import 'skill_model.dart';
import 'social_media_model.dart';
import 'favorite_tecnologies_model.dart';

class DevModel {
  //todo this should represent the entire page, so this must have more propriets like skillsList and favoriteTecnologiesList
  final String avatarUrl;
  final String name;
  final String bio;
  final String blog;
  final List<SocialMedia> socialMedia;
  final List<FavoriteTecnologyModel> favoritesTecnologies;
  final List<SkillModel> skills;
  DevModel({
    required this.avatarUrl,
    required this.name,
    required this.bio,
    required this.blog,
    required this.socialMedia,
    required this.favoritesTecnologies,
    required this.skills,
  });
  static DevModel fromJson(dynamic data) {
    return DevModel(
        avatarUrl: data['avatar_url'],
        name: data['name'],
        bio: data['bio'],
        blog: data['blog'],
        socialMedia: data[''],
        favoritesTecnologies: data[''],
        skills: data['']);
  }
}
