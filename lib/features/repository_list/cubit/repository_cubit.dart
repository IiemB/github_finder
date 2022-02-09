import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_finder/features/repository_list/interfaces/repository_list_interface.dart';
import 'package:github_user_finder/models/repository_model/repository_model.dart';
import 'package:injectable/injectable.dart';

part 'repository_state.dart';
part 'repository_cubit.freezed.dart';

@injectable
class RepositoryCubit extends Cubit<RepositoryState> {
  RepositoryCubit(this._repositoryListInterface)
      : super(const RepositoryState.initial('Initial State'));

  final RepositoryListInterface _repositoryListInterface;

  final repositoryList = List<RepositoryModel>.empty(growable: true);

  int currentPage = 1;

  Future<void> fetchNewData({
    required String query,
    required int page,
    int perPage = 50,
  }) async {
    repositoryList.clear();
    currentPage = 1;
    emit(const RepositoryState.loading());

    final result = await _repositoryListInterface.getRepositories(
      query: query,
      page: page,
      perPage: perPage,
    );

    result.fold(
      (l) => emit(RepositoryState.error(l.data)),
      (r) {
        repositoryList.addAll(r);
        emit(RepositoryState.fetchedData(r));
      },
    );
  }

  Future<void> fetchData({
    required String query,
    required int page,
    int perPage = 50,
  }) async {
    emit(const RepositoryState.loading());

    final result = await _repositoryListInterface.getRepositories(
      query: query,
      page: page,
      perPage: perPage,
    );

    result.fold(
      (l) => emit(RepositoryState.error(l.data)),
      (r) {
        currentPage++;
        repositoryList.addAll(r);
        emit(RepositoryState.fetchedData(r));
      },
    );
  }
}
