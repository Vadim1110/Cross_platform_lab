import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/github_viewmodel.dart';
import 'package:go_router/go_router.dart';

class GithubPage extends StatelessWidget {
  const GithubPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<GithubViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub статистика'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: Center(
        child: viewModel.isLoading
            ? const CircularProgressIndicator()
            : viewModel.user != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            NetworkImage(viewModel.user!.avatarUrl),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        viewModel.user!.login,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text('Репозиторіїв: ${viewModel.user!.publicRepos}'),
                      Text('Підписники: ${viewModel.user!.followers}'),
                      Text('Підписки: ${viewModel.user!.following}'),
                      Text('Акаунт створено: ${viewModel.user!.createdAt}'),
                    ],
                  )
                : ElevatedButton(
                    onPressed: () => context.read<GithubViewModel>().loadUser(),
                    child: const Text('Завантажити дані з GitHub'),
                  ),
      ),
    );
  }
}
