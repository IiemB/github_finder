import 'package:github_user_finder/features/user_list/bloc/user_bloc.dart';

abstract class UserListInterface {
  /// get user based on input queries
  Future<UserState> getUsers({
    required String query,
    required int page,
    int perPage = 50,
  });
}
