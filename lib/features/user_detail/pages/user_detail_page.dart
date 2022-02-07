import 'package:flutter/material.dart';
import 'package:github_user_finder/models/models.dart';
import 'package:url_launcher/url_launcher.dart';

class UserDetailPage extends StatelessWidget {
  final UserModel userModel;

  const UserDetailPage({
    Key? key,
    required this.userModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _size = 200;

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Detail'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Hero(
                tag: Key(userModel.avatar_url!),
                child: Container(
                  height: _size,
                  width: _size,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(_size / 4),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(userModel.avatar_url!),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Name'),
                subtitle: Text(userModel.login!),
              ),
              ListTile(
                title: const Text('Id'),
                subtitle: Text(userModel.id.toString()),
              ),
              ListTile(
                title: const Text('Type'),
                subtitle: Text(userModel.type!),
              ),
              ListTile(
                title: const Text('Score'),
                subtitle: Text(userModel.score.toString()),
              ),
              ListTile(
                onTap: () async => await launch(userModel.html_url!),
                title: const Text('Url'),
                subtitle: Text(userModel.html_url!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
