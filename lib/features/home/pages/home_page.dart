import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_finder/features/change_theme/cubit/change_theme_cubit.dart';
import 'package:github_user_finder/features/repository_list/pages/repository_list_page.dart';
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
                  RepositoryListPage.routeName,
                ),
                child: const Text('Search Repository'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: ElevatedButton(
                onPressed: () =>
                    BlocProvider.of<ChangeThemeCubit>(context).changeTheme(),
                child: const Text('Change Theme'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
