import 'package:app_masterclass/app/about/model/dev_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Map<String, dynamic> data = {
    "login": "Decripter",
    "id": 46649531,
    "node_id": "MDQ6VXNlcjQ2NjQ5NTMx",
    "avatar_url": "https://avatars.githubusercontent.com/u/46649531?v=4",
    "name": "Jeilson Araujo",
    "company": null,
    "blog": "",
    "location": "Brazil",
    "email": null,
    "hireable": null,
    "bio": "Always learning...\r\nCurrently Dart/Flutter",
    "twitter_username": null,
    "public_repos": 35,
    "public_gists": 0,
    "followers": 3,
    "following": 2,
    "created_at": "2019-01-13T14:05:58Z",
    "updated_at": "2022-09-11T15:09:25Z"
  };

  test('shoud return user name [Jeilson Araujo]', () {
    var dev = DevModel.fromMap(data);
    expect(dev.name, 'Jeilson Araujo');
  });

  test('shoud return user bio [Always learning...]', () {
    var dev = DevModel.fromMap(data);
    expect(dev.bio, 'Always learning...\r\nCurrently Dart/Flutter');
  });

  test('shoud return url of avatar[https://avatars.githu...]', () {
    var dev = DevModel.fromMap(data);
    expect(
        dev.avatar_url, 'https://avatars.githubusercontent.com/u/46649531?v=4');
  });
}
