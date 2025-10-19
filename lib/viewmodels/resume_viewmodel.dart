import 'package:flutter/foundation.dart';
import '../models/user_model.dart';

class ResumeViewModel extends ChangeNotifier {
  late UserModel user;

  void setUser(UserModel newUser) {
    user = newUser;
    notifyListeners();
  }
}
