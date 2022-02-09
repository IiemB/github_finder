import 'package:flutter/material.dart';
import 'package:github_user_finder/models/models.dart';
import 'package:url_launcher/url_launcher.dart';

class RepositoryDetailPage extends StatelessWidget {
  final RepositoryModel repositoryModel;

  static const String routeName = '/repositoryDetailPage';

  const RepositoryDetailPage({
    Key? key,
    required this.repositoryModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _size = 200;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Repository Detail'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Hero(
                tag: repositoryModel.id.toString(),
                child: Container(
                  height: _size,
                  width: _size,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(_size / 4),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(repositoryModel.owner!.avatar_url!),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    ListTile(
                      title: const Text('Owner'),
                      subtitle: Text(repositoryModel.owner!.login!),
                    ),
                    ListTile(
                      title: const Text('Repository Name'),
                      subtitle: Text(repositoryModel.name!),
                    ),
                    ListTile(
                      title: const Text('Description'),
                      subtitle: Text(repositoryModel.description!.toString()),
                    ),
                    ListTile(
                      title: const Text('Id'),
                      subtitle: Text(repositoryModel.id.toString()),
                    ),
                    ListTile(
                      title: const Text('Private'),
                      subtitle: Text(repositoryModel.private!.toString()),
                    ),
                    ListTile(
                      onTap: () async =>
                          await launch(repositoryModel.html_url!),
                      title: const Text('Url'),
                      subtitle: Text(repositoryModel.html_url!),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
