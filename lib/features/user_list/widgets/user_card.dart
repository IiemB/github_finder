import 'package:flutter/material.dart';
import 'package:github_user_finder/features/user_detail/pages/user_detail_page.dart';
import 'package:github_user_finder/models/models.dart';

class UserCard extends StatelessWidget {
  final UserModel userModel;
  const UserCard({
    Key? key,
    required this.userModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context,
          UserDetailPage.routeName,
          arguments: userModel,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: userModel.id.toString(),
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(userModel.avatar_url!),
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userModel.login!,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      userModel.id.toString(),
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
