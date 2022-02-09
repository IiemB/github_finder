import 'package:flutter/material.dart';
import 'package:github_user_finder/features/repository_detail/pages/repository_detail_page.dart';
import 'package:github_user_finder/models/models.dart';

class RepositoryCard extends StatelessWidget {
  final RepositoryModel repositoryModel;
  const RepositoryCard({
    Key? key,
    required this.repositoryModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context,
          RepositoryDetailPage.routeName,
          arguments: repositoryModel,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: repositoryModel.id.toString(),
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage:
                      NetworkImage(repositoryModel.owner!.avatar_url!),
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      repositoryModel.name!,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      repositoryModel.description!,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
