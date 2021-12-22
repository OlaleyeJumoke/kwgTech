import 'dart:convert';

import 'package:kwg_tech/model/post_model.dart';
import 'package:http/http.dart' as http;

var url = Uri.parse('https://jsonplaceholder.typicode.com/comments');

class Requests {
  Future<List<PostModel>> getPosts() async {
    var response = await http.get(url);
    var decoded = jsonDecode(response.body);
    var data = List<PostModel>.from(decoded.map(
      (post) => PostModel.fromJson(
        post,
      ),
    ));
    return data;
  }
}
