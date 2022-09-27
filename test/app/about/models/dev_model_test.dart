import 'package:app_masterclass/app/home/tabs/about/models/dev_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Map<String, dynamic> data = {
    "login": "Decripter",
    "id": 46649531,
    "node_id": "MDQ6VXNlcjQ2NjQ5NTMx",
    "avatar_url": "https://avatars.githubusercontent.com/u/46649531?v=4",
    "name": "Jeilson Araujo",
    "bio": "Always learning...\r\nCurrently Dart/Flutter",
    "twitter_username": null,
    "public_repos": 35,
    "public_gists": 0,
    "followers": 3,
  };
  test('shoud return user name [Jeilson Araujo]', () {
    var dev = DevModel.fromJson(data);
    expect(dev.name, 'Jeilson Araujo');
  });

  test('shoud return user bio [Always learning...]', () {
    var dev = DevModel.fromJson(data);
    expect(dev.bio, 'Always learning...\r\nCurrently Dart/Flutter');
  });

  test('shoud return url of avatar[https://avatars.githu...]', () {
    var dev = DevModel.fromJson(data);
    expect(
        dev.avatarUrl, 'https://avatars.githubusercontent.com/u/46649531?v=4');
  });

  test("shoud return data from github", () async {
    var dio = Dio();
    final response = await dio.get('https://api.github.com/users/decripter');
    var dev = DevModel.fromJson(response.data);
    expect(dev.name, 'Jeilson Araujo');
  });
}
