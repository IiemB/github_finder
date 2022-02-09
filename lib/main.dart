import 'package:flutter/material.dart';
import 'package:github_user_finder/core/injection.dart';
import 'package:github_user_finder/utils/utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'GithubUserFinderApp',
      title: 'Github User Finder',
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
