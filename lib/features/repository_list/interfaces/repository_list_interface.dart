import 'package:dartz/dartz.dart';
import 'package:github_user_finder/core/core.dart';
import 'package:github_user_finder/models/models.dart';

abstract class RepositoryListInterface {
  /// get user based on input queries
  Future<Either<Failure<String>, List<RepositoryModel>>> getRepositories({
    required String query,
    required int page,
    required int perPage,
  });
}
