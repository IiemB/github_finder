import 'package:flutter/material.dart';
import 'package:github_user_finder/features/user_list/pages/user_list_page.dart';
import 'package:github_user_finder/utils/utils.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: widthByPercent(context, 50),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                  context,
                  UserListPage.routeName,
                ),
                child: const Text('Search User'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                  context,
                  UserListPage.routeName,
                ),
                child: const Text('Search Repository'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}