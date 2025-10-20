import '../models/user_model.dart';

class UserRepository {
  final List<UserModel> _users = [
    UserModel(
      name: 'Вадим Ананко',
      age: 20,
      education: 'Студент ХПІ, факультет інформатики',
      hobby: 'Футбол, програмування',
      email: 'vadym.dev@example.com',
      phone: '+380991234567',
    ),
    UserModel(
      name: 'Вадим Ананко',
      age: 20,
      education: 'Front-End розробник',
      hobby: 'React, Flutter, UI/UX дизайн',
      email: 'vadym.frontend@example.com',
      phone: '+380991234568',
    ),
    UserModel(
      name: 'Вадим Ананко',
      age: 20,
      education: 'Футболіст, аматорська ліга',
      hobby: 'Спорт, тренування, командна гра',
      email: 'vadym.sport@example.com',
      phone: '+380991234569',
    ),
  ];

  List<UserModel> getAllUsers() => _users;
  UserModel getUserByIndex(int index) => _users[index];
}
