import 'package:github_user_finder/features/user_list/bloc/user_bloc.dart';
import 'package:github_user_finder/features/user_list/interfaces/user_list_interface.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserListInterface)
class UserListRepositories extends UserListInterface {
  @override
  Future<UserState> getUsers({
    required String query,
    required int page,
    int perPage = 50,
  }) {
    throw UnimplementedError();
  }
}
