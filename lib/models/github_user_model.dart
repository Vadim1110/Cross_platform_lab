class GithubUser {
  final String login;
  final String avatarUrl;
  final int publicRepos;
  final int followers;
  final int following;
  final String createdAt;

  GithubUser({
    required this.login,
    required this.avatarUrl,
    required this.publicRepos,
    required this.followers,
    required this.following,
    required this.createdAt,
  });

  factory GithubUser.fromJson(Map<String, dynamic> json) {
    return GithubUser(
      login: json['login'] ?? '',
      avatarUrl: json['avatar_url'] ?? '',
      publicRepos: json['public_repos'] ?? 0,
      followers: json['followers'] ?? 0,
      following: json['following'] ?? 0,
      createdAt: json['created_at'] ?? '',
    );
  }
}
