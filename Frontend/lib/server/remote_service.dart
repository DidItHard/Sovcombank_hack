import 'dart:convert';

import 'package:stock_app/server/user_model.dart';
import 'package:http/http.dart' as http;

// await RemoteService().getUser().then((value) => print(value?.firstName));


class RemoteService {

  Future<User?> getUser() async {
    var client = http.Client();

    var uri = Uri.parse(apiUrl);
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      print(json);
      return userFromJson(json);
    }
    print(response.statusCode);
    return null;
  }

  final String apiUrl = 'http://194.58.118.49/users';

  Future<User?> postUser() async {
    var client = http.Client();

    var uri = Uri.parse('http://194.58.118.49/users');
    var response = await http.post(
        Uri.parse('http://194.58.118.49/users'),
        body: {'username': 'AssHole', 'age': '25'});

    if (response.statusCode == 200) {
      var json = response.body;
      print('success');
      return userFromJson(json);
    }
    print(response.statusCode);
    return null;
    }

    Future<User?> putUser() async {
      var client = http.Client();

      var uri = Uri.parse('http://194.58.118.49/users');
      var response = await http.put(
        Uri.parse('http://194.58.118.49/users/1'),
        body: jsonEncode(<String, String>{
          'username': 'James'
        },),);

      if (response.statusCode == 200) {
        var json = response.body;
        print('success');
        print(json);
        return userFromJson(json);

      }
      print(response.statusCode);
      return null;
      }
}
