import 'package:dartz/dartz.dart';
import 'package:github_user_finder/core/core.dart';
import 'package:github_user_finder/models/user_model/user_model.dart';

abstract class UserListInterface {
  /// get user based on input queries
  Future<Either<Failure<String>, List<UserModel>>> getUsers({
    required String query,
    required int page,
    required int perPage,
  });
}
