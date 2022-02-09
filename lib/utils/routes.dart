import 'package:flutter/material.dart';
import 'package:github_user_finder/features/home/pages/home_page.dart';
import 'package:github_user_finder/features/user_detail/pages/user_detail_page.dart';
import 'package:github_user_finder/features/user_list/pages/user_list_page.dart';
import 'package:github_user_finder/models/user_model/user_model.dart';

class Routes {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (context) {
        switch (routeSettings.name) {
          case HomePage.routeName:
            return const HomePage();
          case UserListPage.routeName:
            return const UserListPage();
          case UserDetailPage.routeName:
            return UserDetailPage(
              userModel: routeSettings.arguments as UserModel,
            );
          default:
            return const HomePage();
        }
      },
    );
  }
}
