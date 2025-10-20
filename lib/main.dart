import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/app_router.dart';
import 'viewmodels/resume_viewmodel.dart';
import 'viewmodels/user_list_viewmodel.dart';
import 'viewmodels/github_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserListViewModel()),
        ChangeNotifierProvider(create: (_) => ResumeViewModel()),
        ChangeNotifierProvider(create: (_) => GithubViewModel()), // 👈 новий
      ],
      child: MaterialApp.router(
        title: 'Резюме Вадима Ананка',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          useMaterial3: true,
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
