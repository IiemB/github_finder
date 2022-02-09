import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_finder/core/injection.dart';
import 'package:github_user_finder/features/change_theme/cubit/change_theme_cubit.dart';
import 'package:github_user_finder/features/repository_list/cubit/repository_cubit.dart';
import 'package:github_user_finder/features/user_list/cubit/user_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<UserCubit>()),
        BlocProvider(create: (context) => getIt<RepositoryCubit>()),
        BlocProvider(create: (context) => getIt<ChangeThemeCubit>()),
      ],
      child: BlocBuilder<ChangeThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            restorationScopeId: 'GithubUserFinderApp',
            title: 'Github User Finder',
            theme: Themes.lightTheme,
            darkTheme: Themes.darkTheme,
            themeMode: state,
            onGenerateRoute: Routes.onGenerateRoute,
          );
        },
      ),
    );
  }
}
