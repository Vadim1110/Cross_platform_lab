import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/github_user_model.dart';

class GithubService {
  final String baseUrl = 'https://api.github.com/users/vadim1110';

  Future<GithubUser> fetchGithubUser() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return GithubUser.fromJson(jsonData);
    } else {
      throw Exception('Не вдалося отримати дані з GitHub');
    }
  }
}
