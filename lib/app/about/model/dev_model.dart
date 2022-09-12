// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DevModel {
  final String avatar_url;
  final String name;
  final String bio;
  final String blog;
  DevModel({
    required this.avatar_url,
    required this.name,
    required this.bio,
    required this.blog,
  });

  DevModel copyWith({
    String? avatar_url,
    String? name,
    String? bio,
    String? blog,
  }) {
    return DevModel(
      avatar_url: avatar_url ?? this.avatar_url,
      name: name ?? this.name,
      bio: bio ?? this.bio,
      blog: blog ?? this.blog,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'avatar_url': avatar_url,
      'name': name,
      'bio': bio,
      'blog': blog,
    };
  }

  factory DevModel.fromMap(Map<String, dynamic> map) {
    return DevModel(
      avatar_url: map['avatar_url'] as String,
      name: map['name'] as String,
      bio: map['bio'] as String,
      blog: map['blog'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DevModel.fromJson(String source) =>
      DevModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'DevModel(avatar_url: $avatar_url, name: $name, bio: $bio, blog: $blog)';

  @override
  bool operator ==(covariant DevModel other) {
    if (identical(this, other)) return true;

    return other.avatar_url == avatar_url &&
        other.name == name &&
        other.bio == bio &&
        other.blog == blog;
  }

  @override
  int get hashCode =>
      avatar_url.hashCode ^ name.hashCode ^ bio.hashCode ^ blog.hashCode;
}
