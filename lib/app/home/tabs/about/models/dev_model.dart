class DevModel {
  //todo this should represent the entire page, so this must have more propriets like skillsList and favoriteTecnologiesList
  final String avatarUrl;
  final String name;
  final String bio;
  final String blog;
  DevModel({
    required this.avatarUrl,
    required this.name,
    required this.bio,
    required this.blog,
  });
  static DevModel fromJson(dynamic data) {
    return DevModel(
      avatarUrl: data['avatar_url'],
      name: data['name'],
      bio: data['bio'],
      blog: data['blog'],
    );
  }
}
