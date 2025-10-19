import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/resume_viewmodel.dart';
import '../widgets/profile_card.dart';
import 'package:go_router/go_router.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<ResumeViewModel>().user;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Про мене'),
        actions: [
          IconButton(
            icon: const Icon(Icons.contact_page),
            onPressed: () => context.go('/contacts'),
          ),
        ],
      ),
      body: Center(
        child: ProfileCard(user: user),
      ),
    );
  }
}
