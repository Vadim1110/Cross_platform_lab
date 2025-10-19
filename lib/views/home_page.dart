import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/user_list_viewmodel.dart';
import '../viewmodels/resume_viewmodel.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final users = context.watch<UserListViewModel>().users;

    return Scaffold(
      appBar: AppBar(title: const Text('Варіанти резюме')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(user.education),
            subtitle: Text(user.hobby),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              context.read<ResumeViewModel>().setUser(user);
              context.go('/about');
            },
          );
        },
      ),
    );
  }
}
