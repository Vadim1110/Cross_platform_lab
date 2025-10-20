import 'package:flutter/foundation.dart';
import '../models/user_model.dart';
import '../repositories/user_repository.dart';

class UserListViewModel extends ChangeNotifier {
  final UserRepository _repository = UserRepository();

  List<UserModel> get users => _repository.getAllUsers();
}
