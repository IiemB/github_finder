import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:github_user_finder/core/failure.dart';
import 'package:github_user_finder/features/repository_list/interfaces/repository_list_interface.dart';
import 'package:github_user_finder/models/models.dart';
import 'package:github_user_finder/utils/utils.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RepositoryListInterface)
class RepositoryListRepositories extends RepositoryListInterface {
  final _dio = Dio();

  @override
  Future<Either<Failure<String>, List<RepositoryModel>>> getRepositories({
    required String query,
    required int page,
    required int perPage,
  }) async {
    try {
      final _response = await _dio.get(
        '${BASE_URL}search/repositories',
        queryParameters: {
          'q': query,
          'page': page,
          'per_page': perPage,
        },
      );

      if (_response.statusCode == 200 || _response.statusCode == 201) {
        final _responseRepositoryModel =
            ResponseRepositoryModel.fromJson(_response.data);

        if (_responseRepositoryModel.total_count != null &&
            _responseRepositoryModel.items != null) {
          if (_responseRepositoryModel.total_count != 0 &&
              _responseRepositoryModel.items!.isNotEmpty) {
            return right(_responseRepositoryModel.items!);
          } else {
            return left(Failure('Repository not found'));
          }
        } else {
          return left(Failure('Repository not found'));
        }
      } else {
        return left(Failure(_getApiErrorMessage(_response.statusCode!)));
      }
    } on DioError catch (e) {
      return left(
        Failure(_getApiErrorMessage(e.response!.statusCode!)),
      );
    } on Exception catch (e) {
      return left(Failure(e.toString()));
    }
  }

  String _getApiErrorMessage(int errorCode) {
    switch (errorCode) {
      case 304:
        return 'Status: 304 Not Modified';
      case 401:
        return 'Status: 401 Unauthorized';
      case 403:
        return 'Status: 403 Forbidden';
      case 404:
        return 'Status: 404 Not Found';
      case 422:
        return 'Status: 422 Unprocessable Entity';
      default:
        return 'Undifined error';
    }
  }
}
