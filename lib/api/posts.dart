import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:posts/models/models.dart';

Future<List<Post>> fetchPosts() async {
  http.Response response =
      await http.get('https://jsonplaceholder.typicode.com/posts');

  if (response.statusCode != 200) throw Exception('Failed to load posts');

  return jsonDecode(response.body)
      .map<Post>((data) => Post.fromMap(data))
      .toList();
}
