import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../viewmodels/user_list_viewmodel.dart';
import '../viewmodels/resume_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userListViewModel = context.watch<UserListViewModel>();
    final users = userListViewModel.users;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Варіанти резюме'),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: const Icon(Icons.person, color: Colors.deepOrange),
              title: Text(
                user.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('${user.education}\n${user.hobby}'),
              isThreeLine: true,
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                context.read<ResumeViewModel>().setUser(user);
                context.go('/about'); // 👈 перехід на сторінку з деталями
              },
            ),
          );
        },
      ),
    );
  }
}
