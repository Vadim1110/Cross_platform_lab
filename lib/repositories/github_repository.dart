import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/github_user_model.dart';

class GithubRepository {
  final String baseUrl =
      'https://api.github.com/users/vadim1110'; // 👈 твій профіль

  Future<GithubUser> getGithubUser() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return GithubUser.fromJson(data);
    } else {
      throw Exception('Failed to load GitHub user data');
    }
  }
}
