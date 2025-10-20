import 'package:flutter/foundation.dart';
import '../models/github_user_model.dart';
import '../repositories/github_repository.dart';

class GithubViewModel extends ChangeNotifier {
  final GithubRepository _repository = GithubRepository();

  GithubUser? user;
  bool isLoading = false;
  String? errorMessage;

  Future<void> loadUser() async {
    try {
      isLoading = true;
      notifyListeners();

      user = await _repository.getGithubUser();
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
