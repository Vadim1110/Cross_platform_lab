import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../views/home_page.dart';
import '../views/about_page.dart';
import '../views/contacts_page.dart';
import '../views/github_page.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      GoRoute(path: '/about', builder: (context, state) => const AboutPage()),
      GoRoute(
          path: '/contacts', builder: (context, state) => const ContactsPage()),
      GoRoute(
          path: '/github',
          builder: (context, state) => const GithubPage()), // 👈
    ],
  );
}
