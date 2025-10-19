import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/resume_viewmodel.dart';
import 'package:go_router/go_router.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<ResumeViewModel>().user;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Контакти'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email: ${user.email}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Телефон: ${user.phone}',
                style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
